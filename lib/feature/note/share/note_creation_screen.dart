import 'package:auto_route/auto_route.dart';
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
import 'package:misskey_dog/model/emoji/emoji.dart';

@RoutePage()
final class NoteCreationScreen extends HookConsumerWidget {
  const NoteCreationScreen({super.key});

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
            ),
          ],
        ).padding(const EdgeInsets.all(16)).padding(EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
      ),
    );
  }

  Function(String) _useNoteCreation(BuildContext context, WidgetRef ref) {
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
