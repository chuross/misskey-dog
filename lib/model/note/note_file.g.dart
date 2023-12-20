// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteFileImpl _$$NoteFileImplFromJson(Map<String, dynamic> json) =>
    _$NoteFileImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      isSensitive: json['isSensitive'] as bool,
      properties: json['properties'] == null
          ? null
          : NoteFileProperties.fromJson(
              json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NoteFileImplToJson(_$NoteFileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
      'isSensitive': instance.isSensitive,
      'properties': instance.properties,
    };
