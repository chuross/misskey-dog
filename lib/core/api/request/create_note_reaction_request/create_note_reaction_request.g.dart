// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_note_reaction_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNoteReactionRequestImpl _$$CreateNoteReactionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNoteReactionRequestImpl(
      noteId: json['noteId'] as String,
      emojiId: json['reaction'] as String,
    );

Map<String, dynamic> _$$CreateNoteReactionRequestImplToJson(
        _$CreateNoteReactionRequestImpl instance) =>
    <String, dynamic>{
      'noteId': instance.noteId,
      'reaction': instance.emojiId,
    };
