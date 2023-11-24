// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      username: json['username'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      isBot: json['isBot'] as bool,
      bannerUrl: json['bannerUrl'] as String?,
      description: json['description'] as String?,
      followersCount: json['followersCount'] as int,
      followingCount: json['followingCount'] as int,
      notesCount: json['notesCount'] as int,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatarUrl': instance.avatarUrl,
      'isBot': instance.isBot,
      'bannerUrl': instance.bannerUrl,
      'description': instance.description,
      'followersCount': instance.followersCount,
      'followingCount': instance.followingCount,
      'notesCount': instance.notesCount,
    };
