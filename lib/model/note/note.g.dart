// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      renote: json['renote'] == null
          ? null
          : Note.fromJson(json['renote'] as Map<String, dynamic>),
      repliesCount: json['repliesCount'] as int,
      renoteCount: json['renoteCount'] as int,
      rawReactions: Map<String, int>.from(json['reactions'] as Map),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'renote': instance.renote,
      'repliesCount': instance.repliesCount,
      'renoteCount': instance.renoteCount,
      'reactions': instance.rawReactions,
      'text': instance.text,
    };

_$NoteReactionImpl _$$NoteReactionImplFromJson(Map<String, dynamic> json) =>
    _$NoteReactionImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$NoteReactionImplToJson(_$NoteReactionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
