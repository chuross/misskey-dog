// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUserRequest _$GetUserRequestFromJson(Map<String, dynamic> json) {
  return _GetUserRequest.fromJson(json);
}

/// @nodoc
mixin _$GetUserRequest {
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserRequestCopyWith<GetUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserRequestCopyWith<$Res> {
  factory $GetUserRequestCopyWith(
          GetUserRequest value, $Res Function(GetUserRequest) then) =
      _$GetUserRequestCopyWithImpl<$Res, GetUserRequest>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$GetUserRequestCopyWithImpl<$Res, $Val extends GetUserRequest>
    implements $GetUserRequestCopyWith<$Res> {
  _$GetUserRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$GetUserRequestImplCopyWith<$Res>
    implements $GetUserRequestCopyWith<$Res> {
  factory _$$GetUserRequestImplCopyWith(_$GetUserRequestImpl value,
          $Res Function(_$GetUserRequestImpl) then) =
      __$$GetUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetUserRequestImplCopyWithImpl<$Res>
    extends _$GetUserRequestCopyWithImpl<$Res, _$GetUserRequestImpl>
    implements _$$GetUserRequestImplCopyWith<$Res> {
  __$$GetUserRequestImplCopyWithImpl(
      _$GetUserRequestImpl _value, $Res Function(_$GetUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetUserRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserRequestImpl implements _GetUserRequest {
  _$GetUserRequestImpl({required this.userId});

  factory _$GetUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserRequestImplFromJson(json);

  @override
  final String userId;

  @override
  String toString() {
    return 'GetUserRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserRequestImplCopyWith<_$GetUserRequestImpl> get copyWith =>
      __$$GetUserRequestImplCopyWithImpl<_$GetUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserRequestImplToJson(
      this,
    );
  }
}

abstract class _GetUserRequest implements GetUserRequest {
  factory _GetUserRequest({required final String userId}) =
      _$GetUserRequestImpl;

  factory _GetUserRequest.fromJson(Map<String, dynamic> json) =
      _$GetUserRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetUserRequestImplCopyWith<_$GetUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
