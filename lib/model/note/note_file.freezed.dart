// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteFile _$NoteFileFromJson(Map<String, dynamic> json) {
  return _NoteFile.fromJson(json);
}

/// @nodoc
mixin _$NoteFile {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  bool get isSensitive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteFileCopyWith<NoteFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFileCopyWith<$Res> {
  factory $NoteFileCopyWith(NoteFile value, $Res Function(NoteFile) then) =
      _$NoteFileCopyWithImpl<$Res, NoteFile>;
  @useResult
  $Res call(
      {String id,
      String type,
      String url,
      String? thumbnailUrl,
      bool isSensitive});
}

/// @nodoc
class _$NoteFileCopyWithImpl<$Res, $Val extends NoteFile>
    implements $NoteFileCopyWith<$Res> {
  _$NoteFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? isSensitive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteFileImplCopyWith<$Res>
    implements $NoteFileCopyWith<$Res> {
  factory _$$NoteFileImplCopyWith(
          _$NoteFileImpl value, $Res Function(_$NoteFileImpl) then) =
      __$$NoteFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      String url,
      String? thumbnailUrl,
      bool isSensitive});
}

/// @nodoc
class __$$NoteFileImplCopyWithImpl<$Res>
    extends _$NoteFileCopyWithImpl<$Res, _$NoteFileImpl>
    implements _$$NoteFileImplCopyWith<$Res> {
  __$$NoteFileImplCopyWithImpl(
      _$NoteFileImpl _value, $Res Function(_$NoteFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
    Object? thumbnailUrl = freezed,
    Object? isSensitive = null,
  }) {
    return _then(_$NoteFileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isSensitive: null == isSensitive
          ? _value.isSensitive
          : isSensitive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteFileImpl extends _NoteFile {
  const _$NoteFileImpl(
      {required this.id,
      required this.type,
      required this.url,
      required this.thumbnailUrl,
      required this.isSensitive})
      : super._();

  factory _$NoteFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteFileImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String url;
  @override
  final String? thumbnailUrl;
  @override
  final bool isSensitive;

  @override
  String toString() {
    return 'NoteFile(id: $id, type: $type, url: $url, thumbnailUrl: $thumbnailUrl, isSensitive: $isSensitive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.isSensitive, isSensitive) ||
                other.isSensitive == isSensitive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, url, thumbnailUrl, isSensitive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFileImplCopyWith<_$NoteFileImpl> get copyWith =>
      __$$NoteFileImplCopyWithImpl<_$NoteFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteFileImplToJson(
      this,
    );
  }
}

abstract class _NoteFile extends NoteFile {
  const factory _NoteFile(
      {required final String id,
      required final String type,
      required final String url,
      required final String? thumbnailUrl,
      required final bool isSensitive}) = _$NoteFileImpl;
  const _NoteFile._() : super._();

  factory _NoteFile.fromJson(Map<String, dynamic> json) =
      _$NoteFileImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String get url;
  @override
  String? get thumbnailUrl;
  @override
  bool get isSensitive;
  @override
  @JsonKey(ignore: true)
  _$$NoteFileImplCopyWith<_$NoteFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
