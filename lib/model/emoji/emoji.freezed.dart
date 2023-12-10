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

LocalEmoji _$LocalEmojiFromJson(Map<String, dynamic> json) {
  return _LocalEmoji.fromJson(json);
}

/// @nodoc
mixin _$LocalEmoji {
  String get name => throw _privateConstructorUsedError; // ex) ohayougozaimasu
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalEmojiCopyWith<LocalEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalEmojiCopyWith<$Res> {
  factory $LocalEmojiCopyWith(
          LocalEmoji value, $Res Function(LocalEmoji) then) =
      _$LocalEmojiCopyWithImpl<$Res, LocalEmoji>;
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class _$LocalEmojiCopyWithImpl<$Res, $Val extends LocalEmoji>
    implements $LocalEmojiCopyWith<$Res> {
  _$LocalEmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalEmojiImplCopyWith<$Res>
    implements $LocalEmojiCopyWith<$Res> {
  factory _$$LocalEmojiImplCopyWith(
          _$LocalEmojiImpl value, $Res Function(_$LocalEmojiImpl) then) =
      __$$LocalEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? url});
}

/// @nodoc
class __$$LocalEmojiImplCopyWithImpl<$Res>
    extends _$LocalEmojiCopyWithImpl<$Res, _$LocalEmojiImpl>
    implements _$$LocalEmojiImplCopyWith<$Res> {
  __$$LocalEmojiImplCopyWithImpl(
      _$LocalEmojiImpl _value, $Res Function(_$LocalEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = freezed,
  }) {
    return _then(_$LocalEmojiImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalEmojiImpl extends _LocalEmoji {
  const _$LocalEmojiImpl({required this.name, this.url}) : super._();

  factory _$LocalEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalEmojiImplFromJson(json);

  @override
  final String name;
// ex) ohayougozaimasu
  @override
  final String? url;

  @override
  String toString() {
    return 'LocalEmoji(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalEmojiImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalEmojiImplCopyWith<_$LocalEmojiImpl> get copyWith =>
      __$$LocalEmojiImplCopyWithImpl<_$LocalEmojiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalEmojiImplToJson(
      this,
    );
  }
}

abstract class _LocalEmoji extends LocalEmoji {
  const factory _LocalEmoji({required final String name, final String? url}) =
      _$LocalEmojiImpl;
  const _LocalEmoji._() : super._();

  factory _LocalEmoji.fromJson(Map<String, dynamic> json) =
      _$LocalEmojiImpl.fromJson;

  @override
  String get name;
  @override // ex) ohayougozaimasu
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$LocalEmojiImplCopyWith<_$LocalEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalEmoji _$ExternalEmojiFromJson(Map<String, dynamic> json) {
  return _ExternalEmoji.fromJson(json);
}

/// @nodoc
mixin _$ExternalEmoji {
  String get name => throw _privateConstructorUsedError; // ex) ohayougozaimasu
  String get host => throw _privateConstructorUsedError; // ex) misskey.io
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalEmojiCopyWith<ExternalEmoji> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalEmojiCopyWith<$Res> {
  factory $ExternalEmojiCopyWith(
          ExternalEmoji value, $Res Function(ExternalEmoji) then) =
      _$ExternalEmojiCopyWithImpl<$Res, ExternalEmoji>;
  @useResult
  $Res call({String name, String host, String url});
}

/// @nodoc
class _$ExternalEmojiCopyWithImpl<$Res, $Val extends ExternalEmoji>
    implements $ExternalEmojiCopyWith<$Res> {
  _$ExternalEmojiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? host = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalEmojiImplCopyWith<$Res>
    implements $ExternalEmojiCopyWith<$Res> {
  factory _$$ExternalEmojiImplCopyWith(
          _$ExternalEmojiImpl value, $Res Function(_$ExternalEmojiImpl) then) =
      __$$ExternalEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String host, String url});
}

/// @nodoc
class __$$ExternalEmojiImplCopyWithImpl<$Res>
    extends _$ExternalEmojiCopyWithImpl<$Res, _$ExternalEmojiImpl>
    implements _$$ExternalEmojiImplCopyWith<$Res> {
  __$$ExternalEmojiImplCopyWithImpl(
      _$ExternalEmojiImpl _value, $Res Function(_$ExternalEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? host = null,
    Object? url = null,
  }) {
    return _then(_$ExternalEmojiImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalEmojiImpl extends _ExternalEmoji {
  const _$ExternalEmojiImpl(
      {required this.name, required this.host, required this.url})
      : super._();

  factory _$ExternalEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalEmojiImplFromJson(json);

  @override
  final String name;
// ex) ohayougozaimasu
  @override
  final String host;
// ex) misskey.io
  @override
  final String url;

  @override
  String toString() {
    return 'ExternalEmoji(name: $name, host: $host, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalEmojiImpl &&
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
  _$$ExternalEmojiImplCopyWith<_$ExternalEmojiImpl> get copyWith =>
      __$$ExternalEmojiImplCopyWithImpl<_$ExternalEmojiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalEmojiImplToJson(
      this,
    );
  }
}

abstract class _ExternalEmoji extends ExternalEmoji {
  const factory _ExternalEmoji(
      {required final String name,
      required final String host,
      required final String url}) = _$ExternalEmojiImpl;
  const _ExternalEmoji._() : super._();

  factory _ExternalEmoji.fromJson(Map<String, dynamic> json) =
      _$ExternalEmojiImpl.fromJson;

  @override
  String get name;
  @override // ex) ohayougozaimasu
  String get host;
  @override // ex) misskey.io
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ExternalEmojiImplCopyWith<_$ExternalEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlainEmoji _$PlainEmojiFromJson(Map<String, dynamic> json) {
  return _PlainEmoji.fromJson(json);
}

/// @nodoc
mixin _$PlainEmoji {
  String get text => throw _privateConstructorUsedError;

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
  $Res call({String text});
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
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
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
  $Res call({String text});
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
  }) {
    return _then(_$PlainEmojiImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlainEmojiImpl extends _PlainEmoji {
  const _$PlainEmojiImpl({required this.text}) : super._();

  factory _$PlainEmojiImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlainEmojiImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'PlainEmoji(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlainEmojiImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

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
  const factory _PlainEmoji({required final String text}) = _$PlainEmojiImpl;
  const _PlainEmoji._() : super._();

  factory _PlainEmoji.fromJson(Map<String, dynamic> json) =
      _$PlainEmojiImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$PlainEmojiImplCopyWith<_$PlainEmojiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
