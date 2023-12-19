import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_mute_user_request.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

final class NoteMoreActionModal extends HookConsumerWidget {
  final String noteId;

  const NoteMoreActionModal({super.key, required this.noteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text('ユーザーをミュート'.i18n),
          onTap: () => _muteUser(
            context: context,
            ref: ref,
            onSuccess: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('ミュートしました'.i18n))),
          ),
        ),
      ],
    );
  }

  void _muteUser({required BuildContext context, required WidgetRef ref, required onSuccess}) async {
    final Note note = await ref.watch(noteProvider(id: noteId).future);

    final client = await ref.watch(misskeyClientProvider().future);
    await client.createMuteUser(CreateMuteUser(userId: note.user.id).toJson());

    onSuccess();
  }
}
