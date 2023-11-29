// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_local_notes_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetLocalNotesRequestImpl _$$GetLocalNotesRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetLocalNotesRequestImpl(
      sinceId: json['sinceId'] as String?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$GetLocalNotesRequestImplToJson(
        _$GetLocalNotesRequestImpl instance) =>
    <String, dynamic>{
      'sinceId': instance.sinceId,
      'limit': instance.limit,
    };
