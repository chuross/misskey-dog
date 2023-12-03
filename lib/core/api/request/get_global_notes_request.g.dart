// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_global_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetLocalNotesRequestImpl _$$GetLocalNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetLocalNotesRequestImpl(
      hasFiles: json['withFiles'] as bool?,
      untilId: json['untilId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetLocalNotesRequestImplToJson(
        _$GetLocalNotesRequestImpl instance) =>
    <String, dynamic>{
      'withFiles': instance.hasFiles,
      'untilId': instance.untilId,
      'limit': instance.limit,
    };
