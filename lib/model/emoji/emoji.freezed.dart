// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emoji.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomEmoji _$CustomEmojiFromJson(Map<String, dynamic> json) {
  return _CustomEmoji.fromJson(json);
}

/// @nodoc
mixin _$CustomEmoji {
  String get name => throw _privateConstructorUsedError; // ex) ohayougozaimasu
  String? get host => throw _privateConstructorUsedError; // ex) misskey.io
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomEmojiCopyWith<CustomEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomEmojiCopyWith<$Res> {
  factory $CustomEmojiCopyWith(
          CustomEmoji value, $Res Function(CustomEmoji) then) =
      _$CustomEmojiCopyWithImpl<$Res, CustomEmoji>;
  @useResult
  $Res call({String name, String? host, String? url});
}

/// @nodoc
class _$CustomEmojiCopyWithImpl<$Res, $Val extends CustomEmoji>
    implements $CustomEmojiCopyWith<$Res> {
  _$CustomEmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? host = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomEmojiImplCopyWith<$Res>
    implements $CustomEmojiCopyWith<$Res> {
  factory _$$CustomEmojiImplCopyWith(
          _$CustomEmojiImpl value, $Res Function(_$CustomEmojiImpl) then) =
      __$$CustomEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? host, String? url});
}

/// @nodoc
class __$$CustomEmojiImplCopyWithImpl<$Res>
    extends _$CustomEmojiCopyWithImpl<$Res, _$CustomEmojiImpl>
    implements _$$CustomEmojiImplCopyWith<$Res> {
  __$$CustomEmojiImplCopyWithImpl(
      _$CustomEmojiImpl _value, $Res Function(_$CustomEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? host = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CustomEmojiImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomEmojiImpl extends _CustomEmoji {
  const _$CustomEmojiImpl({required this.name, this.host, this.url})
      : super._();

  factory _$CustomEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomEmojiImplFromJson(json);

  @override
  final String name;
// ex) ohayougozaimasu
  @override
  final String? host;
// ex) misskey.io
  @override
  final String? url;

  @override
  String toString() {
    return 'CustomEmoji(name: $name, host: $host, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomEmojiImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, host, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomEmojiImplCopyWith<_$CustomEmojiImpl> get copyWith =>
      __$$CustomEmojiImplCopyWithImpl<_$CustomEmojiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomEmojiImplToJson(
      this,
    );
  }
}

abstract class _CustomEmoji extends CustomEmoji {
  const factory _CustomEmoji(
      {required final String name,
      final String? host,
      final String? url}) = _$CustomEmojiImpl;
  const _CustomEmoji._() : super._();

  factory _CustomEmoji.fromJson(Map<String, dynamic> json) =
      _$CustomEmojiImpl.fromJson;

  @override
  String get name;
  @override // ex) ohayougozaimasu
  String? get host;
  @override // ex) misskey.io
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$CustomEmojiImplCopyWith<_$CustomEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlainEmoji _$PlainEmojiFromJson(Map<String, dynamic> json) {
  return _PlainEmoji.fromJson(json);
}

/// @nodoc
mixin _$PlainEmoji {
  String get text => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlainEmojiCopyWith<PlainEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlainEmojiCopyWith<$Res> {
  factory $PlainEmojiCopyWith(
          PlainEmoji value, $Res Function(PlainEmoji) then) =
      _$PlainEmojiCopyWithImpl<$Res, PlainEmoji>;
  @useResult
  $Res call({String text, String host});
}

/// @nodoc
class _$PlainEmojiCopyWithImpl<$Res, $Val extends PlainEmoji>
    implements $PlainEmojiCopyWith<$Res> {
  _$PlainEmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? host = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlainEmojiImplCopyWith<$Res>
    implements $PlainEmojiCopyWith<$Res> {
  factory _$$PlainEmojiImplCopyWith(
          _$PlainEmojiImpl value, $Res Function(_$PlainEmojiImpl) then) =
      __$$PlainEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String host});
}

/// @nodoc
class __$$PlainEmojiImplCopyWithImpl<$Res>
    extends _$PlainEmojiCopyWithImpl<$Res, _$PlainEmojiImpl>
    implements _$$PlainEmojiImplCopyWith<$Res> {
  __$$PlainEmojiImplCopyWithImpl(
      _$PlainEmojiImpl _value, $Res Function(_$PlainEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? host = null,
  }) {
    return _then(_$PlainEmojiImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlainEmojiImpl extends _PlainEmoji {
  const _$PlainEmojiImpl({required this.text, required this.host}) : super._();

  factory _$PlainEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlainEmojiImplFromJson(json);

  @override
  final String text;
  @override
  final String host;

  @override
  String toString() {
    return 'PlainEmoji(text: $text, host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlainEmojiImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.host, host) || other.host == host));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, host);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlainEmojiImplCopyWith<_$PlainEmojiImpl> get copyWith =>
      __$$PlainEmojiImplCopyWithImpl<_$PlainEmojiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlainEmojiImplToJson(
      this,
    );
  }
}

abstract class _PlainEmoji extends PlainEmoji {
  const factory _PlainEmoji(
      {required final String text,
      required final String host}) = _$PlainEmojiImpl;
  const _PlainEmoji._() : super._();

  factory _PlainEmoji.fromJson(Map<String, dynamic> json) =
      _$PlainEmojiImpl.fromJson;

  @override
  String get text;
  @override
  String get host;
  @override
  @JsonKey(ignore: true)
  _$$PlainEmojiImplCopyWith<_$PlainEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
