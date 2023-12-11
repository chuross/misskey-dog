import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/string.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/feature/notification/share/notification_item.dart';
import 'package:misskey_dog/model/notification/notification_provider.dart';

@RoutePage()
final class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('通知'.i18n),
      ),
      body: switch (notifications) {
        AsyncData(:final value) => RefreshIndicator(
            onRefresh: () async => ref.invalidate(notificationsProvider),
            child: CustomScrollView(
              slivers: [
                SliverSafeArea(
                  sliver: SliverList.builder(
                    itemCount: value.length,
                    itemBuilder: (_, index) {
                      final notification = value[index];
                      return NotificationItem(key: notification.id.toKey(), notification: notification);
                    },
                  ),
                ),
              ],
            ),
          ),
        _ => ScreenLoadingView(value: notifications, onRetry: () => ref.invalidate(notificationsProvider)),
      },
    );
  }
}
