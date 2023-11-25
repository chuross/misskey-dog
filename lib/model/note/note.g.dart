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
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'renote': instance.renote,
      'repliesCount': instance.repliesCount,
      'renoteCount': instance.renoteCount,
      'text': instance.text,
    };
