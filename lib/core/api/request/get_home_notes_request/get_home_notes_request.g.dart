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
    _$GetHomeNotesRequestImpl instance) {
  final val = <String, dynamic>{};

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
