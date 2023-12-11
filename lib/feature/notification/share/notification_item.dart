import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/date_time.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/model/notification/notification.dart' as model;
import 'package:misskey_dog/model/notification/notification_type.dart';

final class NotificationItem extends StatelessWidget {
  final model.Notification notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return switch (notification.kind) {
      NotificationKind.reaction => _item(
          context: context,
          imageUrl: notification.user?.avatarUrl ?? '',
          text: '%sがリアクション'.fill([notification.user?.username ?? '']).i18n,
          subText: notification.note?.text ?? notification.note?.cw,
          createdAt: notification.createdAt,
        ),
      NotificationKind.renote => _item(
          context: context,
          imageUrl: notification.user?.avatarUrl ?? '',
          text: '%sがリノート'.fill([notification.user?.username ?? '']).i18n,
          subText: notification.note?.text ?? notification.note?.cw,
          createdAt: notification.createdAt,
        ),
      NotificationKind.follow => _item(
          context: context,
          imageUrl: notification.user?.avatarUrl ?? '',
          text: '%sがフォロー'.fill([notification.user?.username ?? '']).i18n,
          createdAt: notification.createdAt,
        ),
      _ => const SizedBox.shrink(),
    };
  }

  Widget _item({
    required BuildContext context,
    required String imageUrl,
    String? subImageUrl,
    required String text,
    String? subText,
    required DateTime createdAt,
  }) {
    return Row(
      children: [
        SizedBox.square(
          dimension: 48,
          child: CircleAvatar(
            foregroundImage: CachedNetworkImageProvider(imageUrl),
            child: subImageUrl?.map(
              (p) => CircleAvatar(
                foregroundImage: CachedNetworkImageProvider(subImageUrl),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text, style: context.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
            SizedBox(height: subText?.map((_) => 8) ?? 0),
            subText.mapOrElse((p) {
              return Text(p, style: context.textTheme.bodyMedium?.copyWith(color: Colors.grey.shade700));
            }, elseValue: const SizedBox.shrink())
          ],
        ).expanded(),
        const SizedBox(width: 8),
        Text(createdAt.elapsedTimeLabel, style: context.textTheme.bodySmall),
      ],
    ).padding(const EdgeInsets.all(16));
  }
}
