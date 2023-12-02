// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      renote: json['renote'] == null
          ? null
          : Note.fromJson(json['renote'] as Map<String, dynamic>),
      text: json['text'] as String?,
      files: (json['files'] as List<dynamic>)
          .map((e) => NoteFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalTextEmojiUrlMap: Map<String, String>.from(json['emojis'] as Map),
      reactionCountMap: Map<String, int>.from(json['reactions'] as Map),
      externalReactionUrlMap:
          Map<String, String>.from(json['reactionEmojis'] as Map),
      myRawReactionEmoji: json['myReaction'] as String?,
      repliesCount: json['repliesCount'] as int,
      renoteCount: json['renoteCount'] as int,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'user': instance.user,
      'renote': instance.renote,
      'text': instance.text,
      'files': instance.files,
      'emojis': instance.externalTextEmojiUrlMap,
      'reactions': instance.reactionCountMap,
      'reactionEmojis': instance.externalReactionUrlMap,
      'myReaction': instance.myRawReactionEmoji,
      'repliesCount': instance.repliesCount,
      'renoteCount': instance.renoteCount,
    };
