// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_payload_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StreamingPayloadRequestImpl _$$StreamingPayloadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamingPayloadRequestImpl(
      kind: $enumDecode(_$StreamingPayloadRequestKindEnumMap, json['type']),
      body: StreamingPayloadRequestBody.fromJson(
          json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StreamingPayloadRequestImplToJson(
        _$StreamingPayloadRequestImpl instance) =>
    <String, dynamic>{
      'type': _$StreamingPayloadRequestKindEnumMap[instance.kind]!,
      'body': instance.body,
    };

const _$StreamingPayloadRequestKindEnumMap = {
  StreamingPayloadRequestKind.connect: 'connect',
};

_$StreamingPayloadRequestBodyImpl _$$StreamingPayloadRequestBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$StreamingPayloadRequestBodyImpl(
      id: json['id'] as String,
      channel:
          $enumDecode(_$StreamingPayloadRequestChannelEnumMap, json['channel']),
      params: json['params'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$StreamingPayloadRequestBodyImplToJson(
        _$StreamingPayloadRequestBodyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': _$StreamingPayloadRequestChannelEnumMap[instance.channel]!,
      'params': instance.params,
    };

const _$StreamingPayloadRequestChannelEnumMap = {
  StreamingPayloadRequestChannel.main: 'main',
  StreamingPayloadRequestChannel.homeTimeline: 'homeTimeline',
  StreamingPayloadRequestChannel.localTimeline: 'localTimeline',
  StreamingPayloadRequestChannel.globalTimeline: 'globalTimeline',
};
