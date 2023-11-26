// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Note _$NoteFromJson(Map<String, dynamic> json) {
  return _Note.fromJson(json);
}

/// @nodoc
mixin _$Note {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Note? get renote => throw _privateConstructorUsedError;
  int get repliesCount => throw _privateConstructorUsedError;
  int get renoteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactions')
  Map<String, int> get rawReactions => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  List<NoteFile> get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteCopyWith<Note> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteCopyWith<$Res> {
  factory $NoteCopyWith(Note value, $Res Function(Note) then) =
      _$NoteCopyWithImpl<$Res, Note>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      User user,
      Note? renote,
      int repliesCount,
      int renoteCount,
      @JsonKey(name: 'reactions') Map<String, int> rawReactions,
      String? text,
      List<NoteFile> files});

  $UserCopyWith<$Res> get user;
  $NoteCopyWith<$Res>? get renote;
}

/// @nodoc
class _$NoteCopyWithImpl<$Res, $Val extends Note>
    implements $NoteCopyWith<$Res> {
  _$NoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? user = null,
    Object? renote = freezed,
    Object? repliesCount = null,
    Object? renoteCount = null,
    Object? rawReactions = null,
    Object? text = freezed,
    Object? files = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      renote: freezed == renote
          ? _value.renote
          : renote // ignore: cast_nullable_to_non_nullable
              as Note?,
      repliesCount: null == repliesCount
          ? _value.repliesCount
          : repliesCount // ignore: cast_nullable_to_non_nullable
              as int,
      renoteCount: null == renoteCount
          ? _value.renoteCount
          : renoteCount // ignore: cast_nullable_to_non_nullable
              as int,
      rawReactions: null == rawReactions
          ? _value.rawReactions
          : rawReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<NoteFile>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res>? get renote {
    if (_value.renote == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.renote!, (value) {
      return _then(_value.copyWith(renote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteImplCopyWith<$Res> implements $NoteCopyWith<$Res> {
  factory _$$NoteImplCopyWith(
          _$NoteImpl value, $Res Function(_$NoteImpl) then) =
      __$$NoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      User user,
      Note? renote,
      int repliesCount,
      int renoteCount,
      @JsonKey(name: 'reactions') Map<String, int> rawReactions,
      String? text,
      List<NoteFile> files});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $NoteCopyWith<$Res>? get renote;
}

/// @nodoc
class __$$NoteImplCopyWithImpl<$Res>
    extends _$NoteCopyWithImpl<$Res, _$NoteImpl>
    implements _$$NoteImplCopyWith<$Res> {
  __$$NoteImplCopyWithImpl(_$NoteImpl _value, $Res Function(_$NoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? user = null,
    Object? renote = freezed,
    Object? repliesCount = null,
    Object? renoteCount = null,
    Object? rawReactions = null,
    Object? text = freezed,
    Object? files = null,
  }) {
    return _then(_$NoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      renote: freezed == renote
          ? _value.renote
          : renote // ignore: cast_nullable_to_non_nullable
              as Note?,
      repliesCount: null == repliesCount
          ? _value.repliesCount
          : repliesCount // ignore: cast_nullable_to_non_nullable
              as int,
      renoteCount: null == renoteCount
          ? _value.renoteCount
          : renoteCount // ignore: cast_nullable_to_non_nullable
              as int,
      rawReactions: null == rawReactions
          ? _value._rawReactions
          : rawReactions // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<NoteFile>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl extends _Note {
  const _$NoteImpl(
      {required this.id,
      required this.createdAt,
      required this.user,
      this.renote,
      required this.repliesCount,
      required this.renoteCount,
      @JsonKey(name: 'reactions') required final Map<String, int> rawReactions,
      this.text,
      required final List<NoteFile> files})
      : _rawReactions = rawReactions,
        _files = files,
        super._();

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final User user;
  @override
  final Note? renote;
  @override
  final int repliesCount;
  @override
  final int renoteCount;
  final Map<String, int> _rawReactions;
  @override
  @JsonKey(name: 'reactions')
  Map<String, int> get rawReactions {
    if (_rawReactions is EqualUnmodifiableMapView) return _rawReactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rawReactions);
  }

  @override
  final String? text;
  final List<NoteFile> _files;
  @override
  List<NoteFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'Note(id: $id, createdAt: $createdAt, user: $user, renote: $renote, repliesCount: $repliesCount, renoteCount: $renoteCount, rawReactions: $rawReactions, text: $text, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.renote, renote) || other.renote == renote) &&
            (identical(other.repliesCount, repliesCount) ||
                other.repliesCount == repliesCount) &&
            (identical(other.renoteCount, renoteCount) ||
                other.renoteCount == renoteCount) &&
            const DeepCollectionEquality()
                .equals(other._rawReactions, _rawReactions) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      user,
      renote,
      repliesCount,
      renoteCount,
      const DeepCollectionEquality().hash(_rawReactions),
      text,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      __$$NoteImplCopyWithImpl<_$NoteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteImplToJson(
      this,
    );
  }
}

abstract class _Note extends Note {
  const factory _Note(
      {required final String id,
      required final DateTime createdAt,
      required final User user,
      final Note? renote,
      required final int repliesCount,
      required final int renoteCount,
      @JsonKey(name: 'reactions') required final Map<String, int> rawReactions,
      final String? text,
      required final List<NoteFile> files}) = _$NoteImpl;
  const _Note._() : super._();

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  User get user;
  @override
  Note? get renote;
  @override
  int get repliesCount;
  @override
  int get renoteCount;
  @override
  @JsonKey(name: 'reactions')
  Map<String, int> get rawReactions;
  @override
  String? get text;
  @override
  List<NoteFile> get files;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
