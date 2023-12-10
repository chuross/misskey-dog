// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_emojis_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEmojisResponseImpl _$$GetEmojisResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEmojisResponseImpl(
      emojis: (json['emojis'] as List<dynamic>)
          .map((e) => LocalEmoji.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetEmojisResponseImplToJson(
        _$GetEmojisResponseImpl instance) =>
    <String, dynamic>{
      'emojis': instance.emojis,
    };
