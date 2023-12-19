import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_request.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note_file.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

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
    final createNote = _useNoteCreation(context, ref, relatedNoteId: relatedNoteId, isRenoted: isRenoted);
    final value = useValueListenable(textController);

    return Scaffold(
      appBar: AppBar(
        actions: [
          FilledButton.icon(
            onPressed: value.text.isNotEmpty || isRenoted ? () => createNote(value.text) : null,
            icon: Icon(isRenoted ? Icons.repeat_rounded : Icons.send),
            label: Text(isRenoted ? 'リノート'.i18n : 'ノート'.i18n),
          ).padding(const EdgeInsets.only(right: 16))
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: textController,
                    style: context.textTheme.bodyMedium,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '書きたいこと'.i18n,
                    ),
                    keyboardType: TextInputType.multiline,
                    autofocus: !isRenoted,
                    maxLines: null,
                  ).padding(const EdgeInsets.all(16)),
                  if (relatedNoteId != null) _RelatedNote(relatedNoteId: relatedNoteId!),
                ],
              ),
            ).expanded(),
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
      context.pop();
      return null;
    }, [created.value]);

    return useMemoized(
      () => (String text) async {
        final client = await ref.read(misskeyClientProvider().future);
        await client.createNote(
          request: CreateNoteRequest(
            text: text.isNotEmpty ? text : null,
            replyId: !isRenoted ? relatedNoteId : null,
            renoteId: isRenoted ? relatedNoteId : null,
          ).toJson().removeAllNullValueKeys(),
        );
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
    final relatedNote = ref.watch(NoteProvider(id: relatedNoteId));

    switch (relatedNote) {
      case AsyncData(:final value):
        return Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: context.dividerColorWithOpacity30),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.square(
                dimension: 56,
                child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(value.user.avatarUrl ?? '')),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MisskeyText(
                    text: value.text ?? '',
                    baseTextStyle: context.textTheme.bodyMedium,
                    externalTextEmojiUrlMap: value.externalTextEmojiUrlMap,
                  ),
                  _RelatedNoteFiles(files: value.files),
                ],
              ).expanded(),
            ],
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

final class _RelatedNoteFiles extends StatelessWidget {
  final List<NoteFile> files;

  const _RelatedNoteFiles({required this.files});

  @override
  Widget build(BuildContext context) {
    final imageFiles = files.where((file) => file.isImage).toList();

    if (imageFiles.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (final file in imageFiles)
              CachedNetworkImage(
                imageUrl: file.url,
                fit: BoxFit.contain,
              ).padding(const EdgeInsets.only(bottom: 8)),
          ],
        ),
      ],
    );
  }
}
