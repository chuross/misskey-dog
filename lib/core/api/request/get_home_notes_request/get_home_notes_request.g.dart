// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_home_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetHomeNotesRequestImpl _$$GetHomeNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetHomeNotesRequestImpl(
      hasFiles: json['withFiles'] as bool?,
      untilId: json['untilId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetHomeNotesRequestImplToJson(
        _$GetHomeNotesRequestImpl instance) =>
    <String, dynamic>{
      'withFiles': instance.hasFiles,
      'untilId': instance.untilId,
      'limit': instance.limit,
    };
