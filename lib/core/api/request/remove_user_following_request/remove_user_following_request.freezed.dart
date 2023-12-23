// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_user_following_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoveUserFollowingRequest _$RemoveUserFollowingRequestFromJson(
    Map<String, dynamic> json) {
  return _RemoveUserFollowingRequest.fromJson(json);
}

/// @nodoc
mixin _$RemoveUserFollowingRequest {
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveUserFollowingRequestCopyWith<RemoveUserFollowingRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveUserFollowingRequestCopyWith<$Res> {
  factory $RemoveUserFollowingRequestCopyWith(RemoveUserFollowingRequest value,
          $Res Function(RemoveUserFollowingRequest) then) =
      _$RemoveUserFollowingRequestCopyWithImpl<$Res,
          RemoveUserFollowingRequest>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$RemoveUserFollowingRequestCopyWithImpl<$Res,
        $Val extends RemoveUserFollowingRequest>
    implements $RemoveUserFollowingRequestCopyWith<$Res> {
  _$RemoveUserFollowingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveUserFollowingRequestImplCopyWith<$Res>
    implements $RemoveUserFollowingRequestCopyWith<$Res> {
  factory _$$RemoveUserFollowingRequestImplCopyWith(
          _$RemoveUserFollowingRequestImpl value,
          $Res Function(_$RemoveUserFollowingRequestImpl) then) =
      __$$RemoveUserFollowingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$RemoveUserFollowingRequestImplCopyWithImpl<$Res>
    extends _$RemoveUserFollowingRequestCopyWithImpl<$Res,
        _$RemoveUserFollowingRequestImpl>
    implements _$$RemoveUserFollowingRequestImplCopyWith<$Res> {
  __$$RemoveUserFollowingRequestImplCopyWithImpl(
      _$RemoveUserFollowingRequestImpl _value,
      $Res Function(_$RemoveUserFollowingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$RemoveUserFollowingRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemoveUserFollowingRequestImpl implements _RemoveUserFollowingRequest {
  _$RemoveUserFollowingRequestImpl({required this.userId});

  factory _$RemoveUserFollowingRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RemoveUserFollowingRequestImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'RemoveUserFollowingRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveUserFollowingRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveUserFollowingRequestImplCopyWith<_$RemoveUserFollowingRequestImpl>
      get copyWith => __$$RemoveUserFollowingRequestImplCopyWithImpl<
          _$RemoveUserFollowingRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveUserFollowingRequestImplToJson(
      this,
    );
  }
}

abstract class _RemoveUserFollowingRequest
    implements RemoveUserFollowingRequest {
  factory _RemoveUserFollowingRequest({required final String userId}) =
      _$RemoveUserFollowingRequestImpl;

  factory _RemoveUserFollowingRequest.fromJson(Map<String, dynamic> json) =
      _$RemoveUserFollowingRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveUserFollowingRequestImplCopyWith<_$RemoveUserFollowingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
