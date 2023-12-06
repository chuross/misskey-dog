// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streaming_payload_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamingPayloadRequest _$StreamingPayloadRequestFromJson(
    Map<String, dynamic> json) {
  return _StreamingPayloadRequest.fromJson(json);
}

/// @nodoc
mixin _$StreamingPayloadRequest {
  @JsonKey(name: 'type')
  StreamingPayloadRequestKind get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  StreamingPayloadRequestBody get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamingPayloadRequestCopyWith<StreamingPayloadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamingPayloadRequestCopyWith<$Res> {
  factory $StreamingPayloadRequestCopyWith(StreamingPayloadRequest value,
          $Res Function(StreamingPayloadRequest) then) =
      _$StreamingPayloadRequestCopyWithImpl<$Res, StreamingPayloadRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') StreamingPayloadRequestKind kind,
      @JsonKey(name: 'body') StreamingPayloadRequestBody body});

  $StreamingPayloadRequestBodyCopyWith<$Res> get body;
}

/// @nodoc
class _$StreamingPayloadRequestCopyWithImpl<$Res,
        $Val extends StreamingPayloadRequest>
    implements $StreamingPayloadRequestCopyWith<$Res> {
  _$StreamingPayloadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as StreamingPayloadRequestKind,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as StreamingPayloadRequestBody,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StreamingPayloadRequestBodyCopyWith<$Res> get body {
    return $StreamingPayloadRequestBodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StreamingPayloadRequestImplCopyWith<$Res>
    implements $StreamingPayloadRequestCopyWith<$Res> {
  factory _$$StreamingPayloadRequestImplCopyWith(
          _$StreamingPayloadRequestImpl value,
          $Res Function(_$StreamingPayloadRequestImpl) then) =
      __$$StreamingPayloadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') StreamingPayloadRequestKind kind,
      @JsonKey(name: 'body') StreamingPayloadRequestBody body});

  @override
  $StreamingPayloadRequestBodyCopyWith<$Res> get body;
}

/// @nodoc
class __$$StreamingPayloadRequestImplCopyWithImpl<$Res>
    extends _$StreamingPayloadRequestCopyWithImpl<$Res,
        _$StreamingPayloadRequestImpl>
    implements _$$StreamingPayloadRequestImplCopyWith<$Res> {
  __$$StreamingPayloadRequestImplCopyWithImpl(
      _$StreamingPayloadRequestImpl _value,
      $Res Function(_$StreamingPayloadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? body = null,
  }) {
    return _then(_$StreamingPayloadRequestImpl(
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as StreamingPayloadRequestKind,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as StreamingPayloadRequestBody,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamingPayloadRequestImpl implements _StreamingPayloadRequest {
  const _$StreamingPayloadRequestImpl(
      {@JsonKey(name: 'type') required this.kind,
      @JsonKey(name: 'body') required this.body});

  factory _$StreamingPayloadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamingPayloadRequestImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final StreamingPayloadRequestKind kind;
  @override
  @JsonKey(name: 'body')
  final StreamingPayloadRequestBody body;

  @override
  String toString() {
    return 'StreamingPayloadRequest(kind: $kind, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamingPayloadRequestImpl &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kind, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamingPayloadRequestImplCopyWith<_$StreamingPayloadRequestImpl>
      get copyWith => __$$StreamingPayloadRequestImplCopyWithImpl<
          _$StreamingPayloadRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamingPayloadRequestImplToJson(
      this,
    );
  }
}

abstract class _StreamingPayloadRequest implements StreamingPayloadRequest {
  const factory _StreamingPayloadRequest(
      {@JsonKey(name: 'type') required final StreamingPayloadRequestKind kind,
      @JsonKey(name: 'body')
      required final StreamingPayloadRequestBody
          body}) = _$StreamingPayloadRequestImpl;

  factory _StreamingPayloadRequest.fromJson(Map<String, dynamic> json) =
      _$StreamingPayloadRequestImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  StreamingPayloadRequestKind get kind;
  @override
  @JsonKey(name: 'body')
  StreamingPayloadRequestBody get body;
  @override
  @JsonKey(ignore: true)
  _$$StreamingPayloadRequestImplCopyWith<_$StreamingPayloadRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StreamingPayloadRequestBody _$StreamingPayloadRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _StreamingPayloadRequestBody.fromJson(json);
}

/// @nodoc
mixin _$StreamingPayloadRequestBody {
  StreamingPayloadRequestChannel get channel =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamingPayloadRequestBodyCopyWith<StreamingPayloadRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamingPayloadRequestBodyCopyWith<$Res> {
  factory $StreamingPayloadRequestBodyCopyWith(
          StreamingPayloadRequestBody value,
          $Res Function(StreamingPayloadRequestBody) then) =
      _$StreamingPayloadRequestBodyCopyWithImpl<$Res,
          StreamingPayloadRequestBody>;
  @useResult
  $Res call(
      {StreamingPayloadRequestChannel channel, Map<String, dynamic> params});
}

/// @nodoc
class _$StreamingPayloadRequestBodyCopyWithImpl<$Res,
        $Val extends StreamingPayloadRequestBody>
    implements $StreamingPayloadRequestBodyCopyWith<$Res> {
  _$StreamingPayloadRequestBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as StreamingPayloadRequestChannel,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamingPayloadRequestBodyImplCopyWith<$Res>
    implements $StreamingPayloadRequestBodyCopyWith<$Res> {
  factory _$$StreamingPayloadRequestBodyImplCopyWith(
          _$StreamingPayloadRequestBodyImpl value,
          $Res Function(_$StreamingPayloadRequestBodyImpl) then) =
      __$$StreamingPayloadRequestBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StreamingPayloadRequestChannel channel, Map<String, dynamic> params});
}

/// @nodoc
class __$$StreamingPayloadRequestBodyImplCopyWithImpl<$Res>
    extends _$StreamingPayloadRequestBodyCopyWithImpl<$Res,
        _$StreamingPayloadRequestBodyImpl>
    implements _$$StreamingPayloadRequestBodyImplCopyWith<$Res> {
  __$$StreamingPayloadRequestBodyImplCopyWithImpl(
      _$StreamingPayloadRequestBodyImpl _value,
      $Res Function(_$StreamingPayloadRequestBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channel = null,
    Object? params = null,
  }) {
    return _then(_$StreamingPayloadRequestBodyImpl(
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as StreamingPayloadRequestChannel,
      params: null == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StreamingPayloadRequestBodyImpl
    implements _StreamingPayloadRequestBody {
  const _$StreamingPayloadRequestBodyImpl(
      {required this.channel, required final Map<String, dynamic> params})
      : _params = params;

  factory _$StreamingPayloadRequestBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StreamingPayloadRequestBodyImplFromJson(json);

  @override
  final StreamingPayloadRequestChannel channel;
  final Map<String, dynamic> _params;
  @override
  Map<String, dynamic> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  String toString() {
    return 'StreamingPayloadRequestBody(channel: $channel, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamingPayloadRequestBodyImpl &&
            (identical(other.channel, channel) || other.channel == channel) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, channel, const DeepCollectionEquality().hash(_params));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamingPayloadRequestBodyImplCopyWith<_$StreamingPayloadRequestBodyImpl>
      get copyWith => __$$StreamingPayloadRequestBodyImplCopyWithImpl<
          _$StreamingPayloadRequestBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamingPayloadRequestBodyImplToJson(
      this,
    );
  }
}

abstract class _StreamingPayloadRequestBody
    implements StreamingPayloadRequestBody {
  const factory _StreamingPayloadRequestBody(
          {required final StreamingPayloadRequestChannel channel,
          required final Map<String, dynamic> params}) =
      _$StreamingPayloadRequestBodyImpl;

  factory _StreamingPayloadRequestBody.fromJson(Map<String, dynamic> json) =
      _$StreamingPayloadRequestBodyImpl.fromJson;

  @override
  StreamingPayloadRequestChannel get channel;
  @override
  Map<String, dynamic> get params;
  @override
  @JsonKey(ignore: true)
  _$$StreamingPayloadRequestBodyImplCopyWith<_$StreamingPayloadRequestBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
