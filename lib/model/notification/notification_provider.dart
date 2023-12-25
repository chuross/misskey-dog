import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_notifications_request/get_notifications_request.dart';
import 'package:misskey_dog/model/notification/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_provider.g.dart';

@riverpod
final class Notifications extends _$Notifications {
  @override
  Future<List<Notification>> build() async {
    final client = await ref.watch(misskeyClientProvider().future);

    return await client.getNotifications(const GetNotificationsRequest(
      limit: 100,
    ));
  }

  Future<void> fetchNext() async {
    if (state.isLoading) return;

    final lastId = state.value?.lastOrNull?.id;
    if (lastId == null) return;

    final client = await ref.watch(misskeyClientProvider().future);

    final newNotifications = await client.getNotifications(GetNotificationsRequest(
      limit: 30,
      untilId: lastId,
    ));

    state = AsyncData([...state.value!, ...newNotifications]);
  }
}
