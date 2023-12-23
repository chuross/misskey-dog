// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      name: json['name'] as String?,
      username: json['username'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      instance: json['instance'] == null
          ? null
          : Instance.fromJson(json['instance'] as Map<String, dynamic>),
      host: json['host'] as String?,
      isBot: json['isBot'] as bool,
      bannerUrl: json['bannerUrl'] as String?,
      description: json['description'] as String?,
      pinnedNotes: (json['pinnedNotes'] as List<dynamic>?)
          ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
      followersCount: json['followersCount'] as int?,
      followingCount: json['followingCount'] as int?,
      notesCount: json['notesCount'] as int?,
      externalEmojiUrlMap: (json['emojis'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          {},
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'avatarUrl': instance.avatarUrl,
      'instance': instance.instance,
      'host': instance.host,
      'isBot': instance.isBot,
      'bannerUrl': instance.bannerUrl,
      'description': instance.description,
      'pinnedNotes': instance.pinnedNotes,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
      'notesCount': instance.notesCount,
      'emojis': instance.externalEmojiUrlMap,
    };
