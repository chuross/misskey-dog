// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return _AuthCompletion.fromJson(json);
}

/// @nodoc
mixin _$Authentication {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationCopyWith<Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationCopyWith<$Res> {
  factory $AuthenticationCopyWith(
          Authentication value, $Res Function(Authentication) then) =
      _$AuthenticationCopyWithImpl<$Res, Authentication>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$AuthenticationCopyWithImpl<$Res, $Val extends Authentication>
    implements $AuthenticationCopyWith<$Res> {
  _$AuthenticationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthCompletionImplCopyWith<$Res>
    implements $AuthenticationCopyWith<$Res> {
  factory _$$AuthCompletionImplCopyWith(_$AuthCompletionImpl value,
          $Res Function(_$AuthCompletionImpl) then) =
      __$$AuthCompletionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$AuthCompletionImplCopyWithImpl<$Res>
    extends _$AuthenticationCopyWithImpl<$Res, _$AuthCompletionImpl>
    implements _$$AuthCompletionImplCopyWith<$Res> {
  __$$AuthCompletionImplCopyWithImpl(
      _$AuthCompletionImpl _value, $Res Function(_$AuthCompletionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthCompletionImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthCompletionImpl implements _AuthCompletion {
  const _$AuthCompletionImpl({@JsonKey(name: 'token') required this.token});

  factory _$AuthCompletionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthCompletionImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'Authentication(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCompletionImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthCompletionImplCopyWith<_$AuthCompletionImpl> get copyWith =>
      __$$AuthCompletionImplCopyWithImpl<_$AuthCompletionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthCompletionImplToJson(
      this,
    );
  }
}

abstract class _AuthCompletion implements Authentication {
  const factory _AuthCompletion(
          {@JsonKey(name: 'token') required final String token}) =
      _$AuthCompletionImpl;

  factory _AuthCompletion.fromJson(Map<String, dynamic> json) =
      _$AuthCompletionImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthCompletionImplCopyWith<_$AuthCompletionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
