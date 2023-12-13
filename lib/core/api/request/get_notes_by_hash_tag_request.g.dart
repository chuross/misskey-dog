// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes_by_hash_tag_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotesByHashTagRequestImpl _$$GetNotesByHashTagRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotesByHashTagRequestImpl(
      hashTag: json['tag'] as String,
      limit: json['limit'] as int?,
      untilId: json['untilId'] as String?,
    );

Map<String, dynamic> _$$GetNotesByHashTagRequestImplToJson(
        _$GetNotesByHashTagRequestImpl instance) =>
    <String, dynamic>{
      'tag': instance.hashTag,
      'limit': instance.limit,
      'untilId': instance.untilId,
    };
