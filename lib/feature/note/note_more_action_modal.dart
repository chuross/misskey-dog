import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_mute_user_request/create_mute_user_request.dart';
import 'package:misskey_dog/core/view/confirmation_dialog.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/provider/note_provider.dart';

final class NoteMoreActionModal extends HookConsumerWidget {
  final String noteId;

  const NoteMoreActionModal({super.key, required this.noteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      shrinkWrap: true,
      children: [
        ListTile(
          title: Text('ユーザーをミュート'.i18n, style: const TextStyle(color: CupertinoColors.destructiveRed)),
          onTap: () => showUserMuteConfirmationDialog(context, ref),
        ),
      ],
    );
  }

  void showUserMuteConfirmationDialog(BuildContext context, WidgetRef ref) {
    showComfirmationDialog(
      context: context,
      message: 'ユーザーをミュートしますか？'.i18n,
      positiveText: 'ミュート'.i18n,
      onPositivePressed: () => _muteUser(
        ref: ref,
        onSuccess: () {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('ミュートしました'.i18n)));
        },
      ),
    );
  }

  void _muteUser({required WidgetRef ref, required onSuccess}) async {
    final Note note = await ref.watch(noteProvider(id: noteId).future);

    final client = await ref.watch(misskeyClientProvider().future);
    await client.createMuteUser(CreateMuteUserRequest(userId: note.user.id).toJson());

    onSuccess();
  }
}
