// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_emoji_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEmojiRequest _$GetEmojiRequestFromJson(Map<String, dynamic> json) {
  return _GetEmojiRequest.fromJson(json);
}

/// @nodoc
mixin _$GetEmojiRequest {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEmojiRequestCopyWith<GetEmojiRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEmojiRequestCopyWith<$Res> {
  factory $GetEmojiRequestCopyWith(
          GetEmojiRequest value, $Res Function(GetEmojiRequest) then) =
      _$GetEmojiRequestCopyWithImpl<$Res, GetEmojiRequest>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$GetEmojiRequestCopyWithImpl<$Res, $Val extends GetEmojiRequest>
    implements $GetEmojiRequestCopyWith<$Res> {
  _$GetEmojiRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEmojiRequestImplCopyWith<$Res>
    implements $GetEmojiRequestCopyWith<$Res> {
  factory _$$GetEmojiRequestImplCopyWith(_$GetEmojiRequestImpl value,
          $Res Function(_$GetEmojiRequestImpl) then) =
      __$$GetEmojiRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetEmojiRequestImplCopyWithImpl<$Res>
    extends _$GetEmojiRequestCopyWithImpl<$Res, _$GetEmojiRequestImpl>
    implements _$$GetEmojiRequestImplCopyWith<$Res> {
  __$$GetEmojiRequestImplCopyWithImpl(
      _$GetEmojiRequestImpl _value, $Res Function(_$GetEmojiRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetEmojiRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEmojiRequestImpl implements _GetEmojiRequest {
  const _$GetEmojiRequestImpl({required this.name});

  factory _$GetEmojiRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEmojiRequestImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'GetEmojiRequest(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmojiRequestImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmojiRequestImplCopyWith<_$GetEmojiRequestImpl> get copyWith =>
      __$$GetEmojiRequestImplCopyWithImpl<_$GetEmojiRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEmojiRequestImplToJson(
      this,
    );
  }
}

abstract class _GetEmojiRequest implements GetEmojiRequest {
  const factory _GetEmojiRequest({required final String name}) =
      _$GetEmojiRequestImpl;

  factory _GetEmojiRequest.fromJson(Map<String, dynamic> json) =
      _$GetEmojiRequestImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GetEmojiRequestImplCopyWith<_$GetEmojiRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
