// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/notification/notification_type.dart';
import 'package:misskey_dog/model/user/user.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
abstract class Notification with _$Notification {
  const factory Notification({
    required String id,
    required DateTime createdAt,
    @JsonKey(name: 'type', unknownEnumValue: NotificationKind.unknown) required NotificationKind kind,
    User? user,
    Note? note,
    String? reaction,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) => _$NotificationFromJson(json);
}
