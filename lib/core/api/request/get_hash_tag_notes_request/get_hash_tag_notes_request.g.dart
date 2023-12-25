// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_hash_tag_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetHashTagNotesRequestImpl _$$GetHashTagNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetHashTagNotesRequestImpl(
      hashTag: json['tag'] as String,
      hasFiles: json['withFiles'] as bool?,
      limit: json['limit'] as int?,
      untilId: json['untilId'] as String?,
    );

Map<String, dynamic> _$$GetHashTagNotesRequestImplToJson(
    _$GetHashTagNotesRequestImpl instance) {
  final val = <String, dynamic>{
    'tag': instance.hashTag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('withFiles', instance.hasFiles);
  writeNotNull('limit', instance.limit);
  writeNotNull('untilId', instance.untilId);
  return val;
}
