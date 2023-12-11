import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_notifications_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/model/notification/notification.dart';
import 'package:misskey_dog/model/notification/notification_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

@riverpod
final class Notifications extends _$Notifications {
  @override
  Future<List<Notification>> build() async {
    final log = ref.watch(logProvider);
    final client = await ref.watch(misskeyClientProvider().future);

    final notifications = await client.getNotifications(GetNotificationsRequest(
      limit: 100,
    ).toJson().removeAllNullValueKeys());

    for (final element in notifications) {
      if (element.kind == NotificationKind.unknown) {
        log.w('@@@notifications: unknown kind: ${element.toJson()}');
      }
    }

    return notifications;
  }
}
