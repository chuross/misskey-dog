// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_mute_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateMuteUserRequest _$CreateMuteUserRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateMuteUserRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateMuteUserRequest {
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateMuteUserRequestCopyWith<CreateMuteUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMuteUserRequestCopyWith<$Res> {
  factory $CreateMuteUserRequestCopyWith(CreateMuteUserRequest value,
          $Res Function(CreateMuteUserRequest) then) =
      _$CreateMuteUserRequestCopyWithImpl<$Res, CreateMuteUserRequest>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$CreateMuteUserRequestCopyWithImpl<$Res,
        $Val extends CreateMuteUserRequest>
    implements $CreateMuteUserRequestCopyWith<$Res> {
  _$CreateMuteUserRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateMuteUserRequestImplCopyWith<$Res>
    implements $CreateMuteUserRequestCopyWith<$Res> {
  factory _$$CreateMuteUserRequestImplCopyWith(
          _$CreateMuteUserRequestImpl value,
          $Res Function(_$CreateMuteUserRequestImpl) then) =
      __$$CreateMuteUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$CreateMuteUserRequestImplCopyWithImpl<$Res>
    extends _$CreateMuteUserRequestCopyWithImpl<$Res,
        _$CreateMuteUserRequestImpl>
    implements _$$CreateMuteUserRequestImplCopyWith<$Res> {
  __$$CreateMuteUserRequestImplCopyWithImpl(_$CreateMuteUserRequestImpl _value,
      $Res Function(_$CreateMuteUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CreateMuteUserRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateMuteUserRequestImpl implements _CreateMuteUserRequest {
  const _$CreateMuteUserRequestImpl({required this.userId});

  factory _$CreateMuteUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateMuteUserRequestImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'CreateMuteUserRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMuteUserRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMuteUserRequestImplCopyWith<_$CreateMuteUserRequestImpl>
      get copyWith => __$$CreateMuteUserRequestImplCopyWithImpl<
          _$CreateMuteUserRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateMuteUserRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateMuteUserRequest implements CreateMuteUserRequest {
  const factory _CreateMuteUserRequest({required final String userId}) =
      _$CreateMuteUserRequestImpl;

  factory _CreateMuteUserRequest.fromJson(Map<String, dynamic> json) =
      _$CreateMuteUserRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$CreateMuteUserRequestImplCopyWith<_$CreateMuteUserRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
