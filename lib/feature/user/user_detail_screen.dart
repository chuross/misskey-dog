import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/emoji/emoji_reaction_creation_modal.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/note_creation_screen.dart';
import 'package:misskey_dog/feature/note/note_more_action_modal.dart';
import 'package:misskey_dog/feature/note/share/cached_note_item.dart';
import 'package:misskey_dog/feature/note/share/note_timeline.dart';
import 'package:misskey_dog/feature/user/user_provider.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:misskey_dog/model/note/notes_provider.dart';
import 'package:misskey_dog/model/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'user_detail_screen.g.dart';

@riverpod
Future<User> _userDetail(_UserDetailRef ref, {required String userId}) async {
  final user = await ref.watch(userProvider(id: userId).future);
  for (final note in user.pinnedNotes ?? []) {
    ref.watch(cachedNoteProvider(id: note.id).notifier).update(note);
  }
  return user;
}

final class UserDetailRoute extends GoRouteData {
  final String userId;

  UserDetailRoute({required this.userId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return UserDetailScreen(userId: userId);
  }
}

final class UserDetailScreen extends HookConsumerWidget {
  final String userId;

  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = _userDetailProvider(userId: userId);
    final user = ref.watch(provider);

    switch (user) {
      case AsyncData(:final value):
        final tabs = useMemoized(
          () => [
            (title: '概要'.i18n, child: _UserSummary(user: value)),
            (title: 'ノート'.i18n, child: _UserNotes(userId: userId)),
            (title: 'メディア'.i18n, child: _UserNotes(userId: userId, hasFiles: true)),
          ],
          [user.value],
        );

        return DefaultTabController(
          length: tabs.length,
          child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (_, __) => [
                SliverAppBar(
                  expandedHeight: 200,
                  leading: Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(left: 4),
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.2), shape: BoxShape.circle),
                    child: BackButton(
                      onPressed: () => context.pop(),
                      color: Colors.white,
                    ),
                  ),
                  flexibleSpace: Stack(
                    children: [
                      if (value.bannerUrl != null)
                        Positioned.fill(
                          child: Image(
                            image: CachedNetworkImageProvider(value.bannerUrl ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      if (value.bannerUrl == null)
                        Positioned.fill(
                          child: Container(color: context.theme.primaryColor.withOpacity(0.5)),
                        ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: const Alignment(0.0, 0.5),
                            end: Alignment.bottomCenter,
                            colors: [Colors.white.withOpacity(0.0), Colors.white.withOpacity(0.85), Colors.white],
                          ),
                        ),
                      ),
                    ],
                  ),
                  bottom: TabBar(tabs: [
                    for (final tab in tabs) Tab(text: tab.title),
                  ]),
                ),
              ],
              body: TabBarView(children: [
                for (final tab in tabs) tab.child,
              ]),
            ),
          ),
        );
      default:
        return Scaffold(body: ScreenLoadingView(value: user, onRetry: () => ref.invalidate(provider)));
    }
  }
}

final class _UserSummary extends StatelessWidget {
  final User user;

  const _UserSummary({required this.user});

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
            ).padding(const EdgeInsets.symmetric(horizontal: 16)),
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
              dimension: 72,
              child: CircleAvatar(foregroundImage: CachedNetworkImageProvider(user.avatarUrl ?? '')),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MisskeyText(
                  text: user.displayName,
                  baseTextStyle: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  externalTextEmojiUrlMap: user.externalEmojiUrlMap,
                ),
                Text('@${user.username}@${user.host ?? '.'}', style: context.textTheme.bodySmall),
                const SizedBox(height: 4),
                Text(
                  user.createdAt?.dateTimeLabel.map((p) => '$p 作成') ?? '',
                  style: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade600),
                ),
              ],
            ).expanded(),
          ],
        ),
        if (user.description != null) const SizedBox(height: 16),
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

final class _UserNotes extends ConsumerWidget {
  final String userId;
  final bool hasFiles;

  const _UserNotes({required this.userId, this.hasFiles = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = userNotesIdsWithCacheProvider(userId: userId, hasFiles: hasFiles);
    final noteIds = ref.watch(provider);

    return NoteTimeline(
      noteIds: noteIds,
      onFetchNext: () => ref.read(provider.notifier).fetchNext(),
      onRefresh: () => ref.invalidate(provider),
    );
  }
}
