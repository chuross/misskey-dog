// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserNotesRequestImpl _$$GetUserNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserNotesRequestImpl(
      userId: json['userId'] as String,
      hasFiles: json['withFiles'] as bool?,
      untilId: json['untilId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetUserNotesRequestImplToJson(
    _$GetUserNotesRequestImpl instance) {
  final val = <String, dynamic>{
    'userId': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('withFiles', instance.hasFiles);
  writeNotNull('untilId', instance.untilId);
  writeNotNull('limit', instance.limit);
  return val;
}
