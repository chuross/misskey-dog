import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
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
import 'package:misskey_dog/model/note/note_provider.dart';
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
        if (user.pinnedNotes?.isNotEmpty == true)
          SliverToBoxAdapter(
            child: _UserPinnedNoteCard(
              user: user,
              pinnedNotes: user.pinnedNotes ?? [],
            ).padding(const EdgeInsets.only(top: 16)),
          ),
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
            child: Text('フォロー解除'.i18n),
          )
        : FilledButton(
            onPressed: () => toggle(),
            child: Text('フォロー'.i18n),
          );
  }
}

final class _UserPinnedNoteCard extends ConsumerWidget {
  final User user;
  final List<Note> pinnedNotes;

  const _UserPinnedNoteCard({required this.user, required this.pinnedNotes});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text('ピン留めされたノート'.i18n),
            leading: const Icon(Icons.pin_drop_rounded),
          ).padding(
            const EdgeInsets.only(top: 8),
          ),
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: pinnedNotes.length,
            itemBuilder: (_, index) {
              final note = pinnedNotes[index];

              return CachedNoteItem(
                noteId: note.id,
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
              );
            },
            separatorBuilder: (_, __) {
              return Divider(color: context.dividerColorWithOpacity20).padding(const EdgeInsets.symmetric(vertical: 8));
            },
          )
        ],
      ),
    );
  }
}
