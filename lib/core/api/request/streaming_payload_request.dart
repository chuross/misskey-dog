// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'streaming_payload_request.freezed.dart';
part 'streaming_payload_request.g.dart';

@freezed
class StreamingPayloadRequest with _$StreamingPayloadRequest {
  const factory StreamingPayloadRequest({
    @JsonKey(name: 'type') required StreamingPayloadRequestKind kind,
    @JsonKey(name: 'body') required StreamingPayloadRequestBody body,
  }) = _StreamingPayloadRequest;

  factory StreamingPayloadRequest.fromJson(Map<String, dynamic> json) => _$StreamingPayloadRequestFromJson(json);
}

enum StreamingPayloadRequestKind {
  @JsonValue('connect')
  connect,
}

@freezed
class StreamingPayloadRequestBody with _$StreamingPayloadRequestBody {
  const factory StreamingPayloadRequestBody({
    required String id,
    required StreamingPayloadRequestChannel channel,
    Map<String, dynamic>? params,
  }) = _StreamingPayloadRequestBody;

  factory StreamingPayloadRequestBody.fromJson(Map<String, dynamic> json) => _$StreamingPayloadRequestBodyFromJson(json);
}

enum StreamingPayloadRequestChannel {
  @JsonValue('main')
  main,
  @JsonValue('homeTimeline')
  homeTimeline,
  @JsonValue('localTimeline')
  localTimeline,
  @JsonValue('globalTimeline')
  globalTimeline,
}
