// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserNotesRequestImpl _$$GetUserNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserNotesRequestImpl(
      userId: json['userId'] as String,
      untilId: json['untilId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetUserNotesRequestImplToJson(
        _$GetUserNotesRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'untilId': instance.untilId,
      'limit': instance.limit,
    };
