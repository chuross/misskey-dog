import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_request.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

@RoutePage()
final class NoteCreationScreen extends HookConsumerWidget {
  final String? relatedNoteId;
  final bool isRenoted;

  const NoteCreationScreen({
    super.key,
    this.relatedNoteId,
    this.isRenoted = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final createNote = _useNoteCreation(context, ref);
    final value = useValueListenable(textController);

    return Scaffold(
      appBar: AppBar(
        actions: [
          FilledButton.icon(
            onPressed: value.text.takeIf((p) => p.isNotEmpty)?.map((text) {
              return () => createNote(text);
            }),
            icon: const Icon(Icons.send),
            label: Text('ノート'.i18n),
          ).padding(const EdgeInsets.only(right: 16))
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: textController,
              style: context.textTheme.bodyMedium,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'いまどうしてる?'.i18n,
              ),
              keyboardType: TextInputType.multiline,
              autofocus: true,
              maxLines: null,
            ).padding(const EdgeInsets.all(16)),
            relatedNoteId?.map((id) => _RelatedNote(relatedNoteId: id)) ?? const SizedBox(),
            const Spacer(),
            Divider(height: 1, color: context.dividerColorWithOpacity30),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.attach_file),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility_off_outlined),
                ),
                IconButton(
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    showDragHandle: true,
                    builder: (_) => EmojiReactionCreationModal(onEmojiSelected: (emoji) {
                      textController.text += emoji.safeCast<LocalEmoji>()?.map((p) => ':${p.name}:') ?? '';
                    }),
                  ),
                  icon: const Icon(Icons.emoji_emotions_outlined),
                ),
              ],
            ).padding(const EdgeInsets.only(left: 8, right: 8, bottom: 16)),
          ],
        ),
      ),
    );
  }

  Function(String) _useNoteCreation(BuildContext context, WidgetRef ref, {String? relatedNoteId, bool isRenoted = false}) {
    final created = useState(false);

    useEffect(() {
      if (!created.value) return;
      context.popRoute();
      return null;
    }, [created.value]);

    return useMemoized(
      () => (String text) async {
        final client = await ref.read(misskeyClientProvider().future);
        await client.createNote(request: CreateNoteRequest(text: text).toJson());
        created.value = true;
      },
    );
  }
}

final class _RelatedNote extends ConsumerWidget {
  final String relatedNoteId;

  const _RelatedNote({required this.relatedNoteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final relatedNote = ref.watch(cachedNoteProvider(id: relatedNoteId));

    switch (true) {
      case true when relatedNote != null:
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: context.dividerColorWithOpacity30),
          ),
          child: Column(
            children: [
              const SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox.square(
                    dimension: 56,
                    child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(relatedNote.user.avatarUrl ?? '')),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    children: [
                      MisskeyText(text: relatedNote.text ?? '', externalTextEmojiUrlMap: relatedNote.externalTextEmojiUrlMap),
                    ],
                  ).expanded(),
                ],
              ),
            ],
          ).padding(const EdgeInsets.all(16)),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
