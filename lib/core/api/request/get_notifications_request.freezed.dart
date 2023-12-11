// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notifications_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNotificationsRequest _$GetNotificationsRequestFromJson(
    Map<String, dynamic> json) {
  return _GetNotificationsRequest.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationsRequest {
  String? get untilId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotificationsRequestCopyWith<GetNotificationsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsRequestCopyWith<$Res> {
  factory $GetNotificationsRequestCopyWith(GetNotificationsRequest value,
          $Res Function(GetNotificationsRequest) then) =
      _$GetNotificationsRequestCopyWithImpl<$Res, GetNotificationsRequest>;
  @useResult
  $Res call({String? untilId, int? limit});
}

/// @nodoc
class _$GetNotificationsRequestCopyWithImpl<$Res,
        $Val extends GetNotificationsRequest>
    implements $GetNotificationsRequestCopyWith<$Res> {
  _$GetNotificationsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      untilId: freezed == untilId
          ? _value.untilId
          : untilId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationsRequestImplCopyWith<$Res>
    implements $GetNotificationsRequestCopyWith<$Res> {
  factory _$$GetNotificationsRequestImplCopyWith(
          _$GetNotificationsRequestImpl value,
          $Res Function(_$GetNotificationsRequestImpl) then) =
      __$$GetNotificationsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? untilId, int? limit});
}

/// @nodoc
class __$$GetNotificationsRequestImplCopyWithImpl<$Res>
    extends _$GetNotificationsRequestCopyWithImpl<$Res,
        _$GetNotificationsRequestImpl>
    implements _$$GetNotificationsRequestImplCopyWith<$Res> {
  __$$GetNotificationsRequestImplCopyWithImpl(
      _$GetNotificationsRequestImpl _value,
      $Res Function(_$GetNotificationsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetNotificationsRequestImpl(
      untilId: freezed == untilId
          ? _value.untilId
          : untilId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNotificationsRequestImpl implements _GetNotificationsRequest {
  _$GetNotificationsRequestImpl({this.untilId, this.limit});

  factory _$GetNotificationsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotificationsRequestImplFromJson(json);

  @override
  final String? untilId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetNotificationsRequest(untilId: $untilId, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsRequestImpl &&
            (identical(other.untilId, untilId) || other.untilId == untilId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, untilId, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsRequestImplCopyWith<_$GetNotificationsRequestImpl>
      get copyWith => __$$GetNotificationsRequestImplCopyWithImpl<
          _$GetNotificationsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotificationsRequestImplToJson(
      this,
    );
  }
}

abstract class _GetNotificationsRequest implements GetNotificationsRequest {
  factory _GetNotificationsRequest({final String? untilId, final int? limit}) =
      _$GetNotificationsRequestImpl;

  factory _GetNotificationsRequest.fromJson(Map<String, dynamic> json) =
      _$GetNotificationsRequestImpl.fromJson;

  @override
  String? get untilId;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetNotificationsRequestImplCopyWith<_$GetNotificationsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
