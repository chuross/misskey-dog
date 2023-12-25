// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notifications_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationsRequestImpl _$$GetNotificationsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationsRequestImpl(
      untilId: json['untilId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetNotificationsRequestImplToJson(
    _$GetNotificationsRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('untilId', instance.untilId);
  writeNotNull('limit', instance.limit);
  return val;
}
