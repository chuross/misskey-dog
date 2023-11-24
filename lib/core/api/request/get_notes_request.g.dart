// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotesRequestImpl _$$GetNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotesRequestImpl(
      sinceId: json['sinceId'] as String?,
      limit: json['limit'] as int?,
      isLocal: json['local'] as bool?,
    );

Map<String, dynamic> _$$GetNotesRequestImplToJson(
        _$GetNotesRequestImpl instance) =>
    <String, dynamic>{
      'sinceId': instance.sinceId,
      'limit': instance.limit,
      'local': instance.isLocal,
    };
