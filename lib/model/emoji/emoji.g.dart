// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalEmojiImpl _$$LocalEmojiImplFromJson(Map<String, dynamic> json) =>
    _$LocalEmojiImpl(
      name: json['name'] as String,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$LocalEmojiImplToJson(_$LocalEmojiImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$PlainEmojiImpl _$$PlainEmojiImplFromJson(Map<String, dynamic> json) =>
    _$PlainEmojiImpl(
      text: json['text'] as String,
      host: json['host'] as String,
    );

Map<String, dynamic> _$$PlainEmojiImplToJson(_$PlainEmojiImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'host': instance.host,
    };
