// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_hash_tag_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetHashTagNotesRequestImpl _$$GetHashTagNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetHashTagNotesRequestImpl(
      hashTag: json['tag'] as String,
      limit: json['limit'] as int?,
      untilId: json['untilId'] as String?,
    );

Map<String, dynamic> _$$GetHashTagNotesRequestImplToJson(
        _$GetHashTagNotesRequestImpl instance) =>
    <String, dynamic>{
      'tag': instance.hashTag,
      'limit': instance.limit,
      'untilId': instance.untilId,
    };
