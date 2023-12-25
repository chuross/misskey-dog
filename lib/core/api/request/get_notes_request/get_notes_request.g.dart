// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotesRequestImpl _$$GetNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotesRequestImpl(
      query: json['query'] as String,
      untilId: json['untilId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetNotesRequestImplToJson(
    _$GetNotesRequestImpl instance) {
  final val = <String, dynamic>{
    'query': instance.query,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('untilId', instance.untilId);
  writeNotNull('limit', instance.limit);
  return val;
}
