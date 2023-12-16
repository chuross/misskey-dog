// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNoteRequestImpl _$$CreateNoteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNoteRequestImpl(
      text: json['text'] as String?,
      replyId: json['replyId'] as String?,
      renoteId: json['renoteId'] as String?,
    );

Map<String, dynamic> _$$CreateNoteRequestImplToJson(
        _$CreateNoteRequestImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'replyId': instance.replyId,
      'renoteId': instance.renoteId,
    };
