import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/int.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/note_creation_screen.dart';
import 'package:misskey_dog/feature/note/note_more_action_modal.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';
import 'package:misskey_dog/feature/user/hook/use_user_following.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/provider/note_provider.dart';
import 'package:misskey_dog/model/user/user.dart';
import 'package:url_launcher/url_launcher.dart';

final class UserDetailSummary extends StatelessWidget {
  final User user;

  const UserDetailSummary({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _UserInfomation(user: user)),
        SliverToBoxAdapter(child: Divider(color: context.dividerColorWithOpacity30)),
        if (user.pinnedNotes?.isNotEmpty == true)
          SliverToBoxAdapter(
              child: ListTile(
            title: Text('ピン留めされたノート'.i18n),
            leading: const Icon(Icons.pin_drop_rounded),
          ).padding(const EdgeInsets.only(top: 8))),
        if (user.pinnedNotes?.isNotEmpty == true)
          SliverSafeArea(
            top: false,
            sliver: SliverList.builder(
              itemCount: user.pinnedNotes?.length ?? 0,
              itemBuilder: (_, index) {
                final note = user.pinnedNotes![index];
                return _UserPinnedNoteItem(note: note);
              },
            ),
          )
      ],
    );
  }
}

final class _UserInfomation extends StatelessWidget {
  final User user;

  const _UserInfomation({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox.square(
              dimension: 86,
              child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(user.avatarUrl ?? '')),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.createdAt?.dateLabel.map((p) => '%sに作成'.i18n.fill([p])) ?? '',
                          style: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade600),
                        ),
                        Text('@${user.username}@${user.host ?? '.'}', style: context.textTheme.bodySmall),
                      ],
                    ).expanded(),
                    _UserFollowingButton(userId: user.id, initialFollowing: user.isFollowing ?? false),
                  ],
                ),
                const SizedBox(height: 2),
                MisskeyText(
                  text: user.displayName,
                  baseTextStyle: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  externalTextEmojiUrlMap: user.externalEmojiUrlMap,
                ),
              ],
            ).expanded(),
          ],
        ),
        if (user.description != null) const SizedBox(height: 24),
        if (user.description != null)
          MisskeyText(
            text: user.description ?? '',
            baseTextStyle: context.textTheme.bodyMedium,
            externalTextEmojiUrlMap: user.externalEmojiUrlMap,
            onHashtagPressed: (hashtag) => HashtagNotesRoute(hashtag: hashtag).push(context),
            onUrlPressed: (url) => launchUrl(Uri.parse(url)),
          ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: context.dividerColorWithOpacity30),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _UserCountInfo(label: 'ノート'.i18n, count: user.notesCount ?? 0),
              _UserCountInfo(label: 'フォロー'.i18n, count: user.followingCount ?? 0),
              _UserCountInfo(label: 'フォロワー'.i18n, count: user.followersCount ?? 0),
            ],
          ),
        )
      ],
    ).padding(const EdgeInsets.all(16));
  }
}

final class _UserFollowingButton extends HookConsumerWidget {
  final String userId;
  final bool initialFollowing;

  const _UserFollowingButton({required this.userId, required this.initialFollowing});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (isFollowing, toggle) = useUserFollowing(ref: ref, userId: userId, defaultFollowing: initialFollowing);

    return isFollowing
        ? OutlinedButton(
            onPressed: () => toggle(),
            style: OutlinedButton.styleFrom(
              foregroundColor: CupertinoColors.destructiveRed,
              side: const BorderSide(color: CupertinoColors.destructiveRed),
            ),
            child: Text('フォロー解除'.i18n),
          )
        : FilledButton(
            onPressed: () => toggle(),
            child: Text('フォロー'.i18n),
          );
  }
}

final class _UserCountInfo extends StatelessWidget {
  final String label;
  final int count;

  const _UserCountInfo({required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count.withCommma, style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        Text(label, style: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade700)),
      ],
    );
  }
}

final class _UserPinnedNoteItem extends ConsumerWidget {
  final Note note;

  const _UserPinnedNoteItem({required this.note});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Card(
        child: CachedNoteItem(
          noteId: note.id,
          isOmitEnabled: false,
          onUserIconPressed: (userId) => null,
          onReactionPressed: (emoji) => ref.read(cachedNoteProvider(id: note.id).notifier).reaction(emoji),
          onHashtagPressed: (hashtag) => HashtagNotesRoute(hashtag: hashtag).push(context),
          onUrlPressed: (url) => launchUrl(Uri.parse(url)),
          onReplyPressed: (noteId) => NoteCreationRoute(relatedNoteId: noteId).push(context),
          onRenotePressed: (noteId) => NoteCreationRoute(relatedNoteId: noteId, isRenoted: true).push(context),
          onReactionAddPressed: () => showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            showDragHandle: true,
            builder: (_) => EmojiReactionCreationModal(onEmojiSelected: (emoji) {
              ref.read(cachedNoteProvider(id: note.id).notifier).reaction(emoji);
            }),
          ),
          onMoreActionPressed: () => showModalBottomSheet(
            context: context,
            showDragHandle: true,
            builder: (_) => NoteMoreActionModal(noteId: note.id),
          ),
        ),
      ),
    );
  }
}
