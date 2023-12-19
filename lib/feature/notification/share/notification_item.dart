import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/feature/misskey/share/misskey_text.dart';
import 'package:misskey_dog/model/emoji/emoji_provider.dart';
import 'package:misskey_dog/model/notification/notification.dart' as model;
import 'package:misskey_dog/model/notification/notification_type.dart';

final class NotificationItem extends StatelessWidget {
  final model.Notification notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return switch (notification.kind) {
      NotificationKind.reaction => _ReactionNotificationItem(notification: notification),
      NotificationKind.renote => _item(
          context: context,
          imageUrl: notification.user?.avatarUrl ?? '',
          text: '%sがリノート'.fill([notification.user?.displayName ?? '']).i18n,
          subText: notification.note?.renote?.text ?? notification.note?.renote?.cw,
          createdAt: notification.createdAt,
          externalEmojiUrlMap: notification.user?.externalEmojiUrlMap ?? const {},
        ),
      NotificationKind.follow => _item(
          context: context,
          imageUrl: notification.user?.avatarUrl ?? '',
          text: '%sがフォロー'.fill([notification.user?.displayName ?? '']).i18n,
          createdAt: notification.createdAt,
          externalEmojiUrlMap: notification.user?.externalEmojiUrlMap ?? const {},
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

final class _ReactionNotificationItem extends ConsumerWidget {
  final model.Notification notification;

  const _ReactionNotificationItem({required this.notification});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emoji = ref.watch(localEmojiProvider(emojiName: notification.reaction?.map((p) => p.substring(1, p.length - 1)) ?? ''));

    switch (emoji) {
      case AsyncData(:final value):
        return _item(
          context: context,
          imageUrl: notification.user?.avatarUrl ?? '',
          subImageUrl: value.url,
          text: '%sがリアクション'.fill([notification.user?.displayName ?? '']).i18n,
          subText: notification.note?.text ?? notification.note?.cw,
          createdAt: notification.createdAt,
          externalEmojiUrlMap: notification.user?.externalEmojiUrlMap ?? const {},
        );
      default:
        return const SizedBox.shrink();
    }
  }
}

Widget _item({
  required BuildContext context,
  required String imageUrl,
  String? subImageUrl,
  required String text,
  String? subText,
  required DateTime createdAt,
  Map<String, String> externalEmojiUrlMap = const {},
  Map<String, String> subExternalEmojiUrlMap = const {},
}) {
  return Row(
    children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox.square(
            dimension: 48,
            child: CircleAvatar(
              foregroundImage: CachedNetworkImageProvider(imageUrl),
            ),
          ),
          if (subImageUrl != null)
            Positioned(
              bottom: -16,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade200.withOpacity(0.6),
                ),
                child: CachedNetworkImage(imageUrl: subImageUrl, height: 20, fit: BoxFit.contain),
              ),
            ),
        ],
      ),
      const SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MisskeyText(
            text: text,
            baseTextStyle: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            externalTextEmojiUrlMap: externalEmojiUrlMap,
          ),
          SizedBox(height: subText != null ? 8 : 0),
          if (subText != null)
            MisskeyText(
              text: subText,
              baseTextStyle: context.textTheme.bodySmall?.copyWith(color: Colors.grey.shade700),
              externalTextEmojiUrlMap: subExternalEmojiUrlMap,
            )
        ],
      ).expanded(),
      const SizedBox(width: 24),
      Text(createdAt.elapsedTimeLabel, style: context.textTheme.labelSmall),
    ],
  ).padding(const EdgeInsets.all(16));
}
