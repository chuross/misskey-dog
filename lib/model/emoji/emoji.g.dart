// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emoji.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomEmojiImpl _$$CustomEmojiImplFromJson(Map<String, dynamic> json) =>
    _$CustomEmojiImpl(
      name: json['name'] as String,
      host: json['host'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CustomEmojiImplToJson(_$CustomEmojiImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'host': instance.host,
      'url': instance.url,
    };

_$PlainEmojiImpl _$$PlainEmojiImplFromJson(Map<String, dynamic> json) =>
    _$PlainEmojiImpl(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$PlainEmojiImplToJson(_$PlainEmojiImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
    };
