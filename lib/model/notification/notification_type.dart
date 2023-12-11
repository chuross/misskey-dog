import 'package:freezed_annotation/freezed_annotation.dart';

enum NotificationKind {
  unknown,
  @JsonValue('reaction')
  reaction,
  @JsonValue('follow')
  follow,
}
