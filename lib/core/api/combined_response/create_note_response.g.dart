// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNoteResponseImpl _$$CreateNoteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNoteResponseImpl(
      createdNote: Note.fromJson(json['createdNote'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateNoteResponseImplToJson(
        _$CreateNoteResponseImpl instance) =>
    <String, dynamic>{
      'createdNote': instance.createdNote,
    };
