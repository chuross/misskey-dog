// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_following_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserFollowingRequest _$CreateUserFollowingRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateUserFollowingRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateUserFollowingRequest {
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserFollowingRequestCopyWith<CreateUserFollowingRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserFollowingRequestCopyWith<$Res> {
  factory $CreateUserFollowingRequestCopyWith(CreateUserFollowingRequest value,
          $Res Function(CreateUserFollowingRequest) then) =
      _$CreateUserFollowingRequestCopyWithImpl<$Res,
          CreateUserFollowingRequest>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$CreateUserFollowingRequestCopyWithImpl<$Res,
        $Val extends CreateUserFollowingRequest>
    implements $CreateUserFollowingRequestCopyWith<$Res> {
  _$CreateUserFollowingRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateUserFollowingRequestImplCopyWith<$Res>
    implements $CreateUserFollowingRequestCopyWith<$Res> {
  factory _$$CreateUserFollowingRequestImplCopyWith(
          _$CreateUserFollowingRequestImpl value,
          $Res Function(_$CreateUserFollowingRequestImpl) then) =
      __$$CreateUserFollowingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$CreateUserFollowingRequestImplCopyWithImpl<$Res>
    extends _$CreateUserFollowingRequestCopyWithImpl<$Res,
        _$CreateUserFollowingRequestImpl>
    implements _$$CreateUserFollowingRequestImplCopyWith<$Res> {
  __$$CreateUserFollowingRequestImplCopyWithImpl(
      _$CreateUserFollowingRequestImpl _value,
      $Res Function(_$CreateUserFollowingRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CreateUserFollowingRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserFollowingRequestImpl implements _CreateUserFollowingRequest {
  _$CreateUserFollowingRequestImpl({required this.userId});

  factory _$CreateUserFollowingRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CreateUserFollowingRequestImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'CreateUserFollowingRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserFollowingRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserFollowingRequestImplCopyWith<_$CreateUserFollowingRequestImpl>
      get copyWith => __$$CreateUserFollowingRequestImplCopyWithImpl<
          _$CreateUserFollowingRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserFollowingRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateUserFollowingRequest
    implements CreateUserFollowingRequest {
  factory _CreateUserFollowingRequest({required final String userId}) =
      _$CreateUserFollowingRequestImpl;

  factory _CreateUserFollowingRequest.fromJson(Map<String, dynamic> json) =
      _$CreateUserFollowingRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserFollowingRequestImplCopyWith<_$CreateUserFollowingRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
