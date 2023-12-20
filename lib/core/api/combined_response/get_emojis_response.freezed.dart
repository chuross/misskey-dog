// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_emojis_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetEmojisResponse _$GetEmojisResponseFromJson(Map<String, dynamic> json) {
  return _GetEmojisResponse.fromJson(json);
}

/// @nodoc
mixin _$GetEmojisResponse {
  List<LocalEmoji> get emojis => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetEmojisResponseCopyWith<GetEmojisResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEmojisResponseCopyWith<$Res> {
  factory $GetEmojisResponseCopyWith(
          GetEmojisResponse value, $Res Function(GetEmojisResponse) then) =
      _$GetEmojisResponseCopyWithImpl<$Res, GetEmojisResponse>;
  @useResult
  $Res call({List<LocalEmoji> emojis});
}

/// @nodoc
class _$GetEmojisResponseCopyWithImpl<$Res, $Val extends GetEmojisResponse>
    implements $GetEmojisResponseCopyWith<$Res> {
  _$GetEmojisResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = null,
  }) {
    return _then(_value.copyWith(
      emojis: null == emojis
          ? _value.emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<LocalEmoji>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEmojisResponseImplCopyWith<$Res>
    implements $GetEmojisResponseCopyWith<$Res> {
  factory _$$GetEmojisResponseImplCopyWith(_$GetEmojisResponseImpl value,
          $Res Function(_$GetEmojisResponseImpl) then) =
      __$$GetEmojisResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LocalEmoji> emojis});
}

/// @nodoc
class __$$GetEmojisResponseImplCopyWithImpl<$Res>
    extends _$GetEmojisResponseCopyWithImpl<$Res, _$GetEmojisResponseImpl>
    implements _$$GetEmojisResponseImplCopyWith<$Res> {
  __$$GetEmojisResponseImplCopyWithImpl(_$GetEmojisResponseImpl _value,
      $Res Function(_$GetEmojisResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emojis = null,
  }) {
    return _then(_$GetEmojisResponseImpl(
      emojis: null == emojis
          ? _value._emojis
          : emojis // ignore: cast_nullable_to_non_nullable
              as List<LocalEmoji>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEmojisResponseImpl implements _GetEmojisResponse {
  const _$GetEmojisResponseImpl({required final List<LocalEmoji> emojis})
      : _emojis = emojis;

  factory _$GetEmojisResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEmojisResponseImplFromJson(json);

  final List<LocalEmoji> _emojis;
  @override
  List<LocalEmoji> get emojis {
    if (_emojis is EqualUnmodifiableListView) return _emojis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emojis);
  }

  @override
  String toString() {
    return 'GetEmojisResponse(emojis: $emojis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmojisResponseImpl &&
            const DeepCollectionEquality().equals(other._emojis, _emojis));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_emojis));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmojisResponseImplCopyWith<_$GetEmojisResponseImpl> get copyWith =>
      __$$GetEmojisResponseImplCopyWithImpl<_$GetEmojisResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEmojisResponseImplToJson(
      this,
    );
  }
}

abstract class _GetEmojisResponse implements GetEmojisResponse {
  const factory _GetEmojisResponse({required final List<LocalEmoji> emojis}) =
      _$GetEmojisResponseImpl;

  factory _GetEmojisResponse.fromJson(Map<String, dynamic> json) =
      _$GetEmojisResponseImpl.fromJson;

  @override
  List<LocalEmoji> get emojis;
  @override
  @JsonKey(ignore: true)
  _$$GetEmojisResponseImplCopyWith<_$GetEmojisResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
