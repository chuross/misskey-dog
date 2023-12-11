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
  String? get text => throw _privateConstructorUsedError;
  String? get cw => throw _privateConstructorUsedError;
  List<NoteFile> get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'emojis', defaultValue: {})
  Map<String, String> get externalTextEmojiUrlMap =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'reactions')
  Map<String, int> get reactionCountMap => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactionEmojis', defaultValue: {})
  Map<String, String> get externalReactionUrlMap =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'myReaction')
  String? get myRawReactionEmoji => throw _privateConstructorUsedError;
  int get repliesCount => throw _privateConstructorUsedError;
  int get renoteCount => throw _privateConstructorUsedError;

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
      String? text,
      String? cw,
      List<NoteFile> files,
      @JsonKey(name: 'emojis', defaultValue: {})
      Map<String, String> externalTextEmojiUrlMap,
      @JsonKey(name: 'reactions') Map<String, int> reactionCountMap,
      @JsonKey(name: 'reactionEmojis', defaultValue: {})
      Map<String, String> externalReactionUrlMap,
      @JsonKey(name: 'myReaction') String? myRawReactionEmoji,
      int repliesCount,
      int renoteCount});

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
    Object? text = freezed,
    Object? cw = freezed,
    Object? files = null,
    Object? externalTextEmojiUrlMap = null,
    Object? reactionCountMap = null,
    Object? externalReactionUrlMap = null,
    Object? myRawReactionEmoji = freezed,
    Object? repliesCount = null,
    Object? renoteCount = null,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      cw: freezed == cw
          ? _value.cw
          : cw // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<NoteFile>,
      externalTextEmojiUrlMap: null == externalTextEmojiUrlMap
          ? _value.externalTextEmojiUrlMap
          : externalTextEmojiUrlMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      reactionCountMap: null == reactionCountMap
          ? _value.reactionCountMap
          : reactionCountMap // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      externalReactionUrlMap: null == externalReactionUrlMap
          ? _value.externalReactionUrlMap
          : externalReactionUrlMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      myRawReactionEmoji: freezed == myRawReactionEmoji
          ? _value.myRawReactionEmoji
          : myRawReactionEmoji // ignore: cast_nullable_to_non_nullable
              as String?,
      repliesCount: null == repliesCount
          ? _value.repliesCount
          : repliesCount // ignore: cast_nullable_to_non_nullable
              as int,
      renoteCount: null == renoteCount
          ? _value.renoteCount
          : renoteCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      String? text,
      String? cw,
      List<NoteFile> files,
      @JsonKey(name: 'emojis', defaultValue: {})
      Map<String, String> externalTextEmojiUrlMap,
      @JsonKey(name: 'reactions') Map<String, int> reactionCountMap,
      @JsonKey(name: 'reactionEmojis', defaultValue: {})
      Map<String, String> externalReactionUrlMap,
      @JsonKey(name: 'myReaction') String? myRawReactionEmoji,
      int repliesCount,
      int renoteCount});

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
    Object? text = freezed,
    Object? cw = freezed,
    Object? files = null,
    Object? externalTextEmojiUrlMap = null,
    Object? reactionCountMap = null,
    Object? externalReactionUrlMap = null,
    Object? myRawReactionEmoji = freezed,
    Object? repliesCount = null,
    Object? renoteCount = null,
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
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      cw: freezed == cw
          ? _value.cw
          : cw // ignore: cast_nullable_to_non_nullable
              as String?,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<NoteFile>,
      externalTextEmojiUrlMap: null == externalTextEmojiUrlMap
          ? _value._externalTextEmojiUrlMap
          : externalTextEmojiUrlMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      reactionCountMap: null == reactionCountMap
          ? _value._reactionCountMap
          : reactionCountMap // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      externalReactionUrlMap: null == externalReactionUrlMap
          ? _value._externalReactionUrlMap
          : externalReactionUrlMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      myRawReactionEmoji: freezed == myRawReactionEmoji
          ? _value.myRawReactionEmoji
          : myRawReactionEmoji // ignore: cast_nullable_to_non_nullable
              as String?,
      repliesCount: null == repliesCount
          ? _value.repliesCount
          : repliesCount // ignore: cast_nullable_to_non_nullable
              as int,
      renoteCount: null == renoteCount
          ? _value.renoteCount
          : renoteCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      this.text,
      this.cw,
      required final List<NoteFile> files,
      @JsonKey(name: 'emojis', defaultValue: {})
      required final Map<String, String> externalTextEmojiUrlMap,
      @JsonKey(name: 'reactions')
      required final Map<String, int> reactionCountMap,
      @JsonKey(name: 'reactionEmojis', defaultValue: {})
      required final Map<String, String> externalReactionUrlMap,
      @JsonKey(name: 'myReaction') this.myRawReactionEmoji,
      required this.repliesCount,
      required this.renoteCount})
      : _files = files,
        _externalTextEmojiUrlMap = externalTextEmojiUrlMap,
        _reactionCountMap = reactionCountMap,
        _externalReactionUrlMap = externalReactionUrlMap,
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
  final String? text;
  @override
  final String? cw;
  final List<NoteFile> _files;
  @override
  List<NoteFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  final Map<String, String> _externalTextEmojiUrlMap;
  @override
  @JsonKey(name: 'emojis', defaultValue: {})
  Map<String, String> get externalTextEmojiUrlMap {
    if (_externalTextEmojiUrlMap is EqualUnmodifiableMapView)
      return _externalTextEmojiUrlMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_externalTextEmojiUrlMap);
  }

  final Map<String, int> _reactionCountMap;
  @override
  @JsonKey(name: 'reactions')
  Map<String, int> get reactionCountMap {
    if (_reactionCountMap is EqualUnmodifiableMapView) return _reactionCountMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reactionCountMap);
  }

  final Map<String, String> _externalReactionUrlMap;
  @override
  @JsonKey(name: 'reactionEmojis', defaultValue: {})
  Map<String, String> get externalReactionUrlMap {
    if (_externalReactionUrlMap is EqualUnmodifiableMapView)
      return _externalReactionUrlMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_externalReactionUrlMap);
  }

  @override
  @JsonKey(name: 'myReaction')
  final String? myRawReactionEmoji;
  @override
  final int repliesCount;
  @override
  final int renoteCount;

  @override
  String toString() {
    return 'Note(id: $id, createdAt: $createdAt, user: $user, renote: $renote, text: $text, cw: $cw, files: $files, externalTextEmojiUrlMap: $externalTextEmojiUrlMap, reactionCountMap: $reactionCountMap, externalReactionUrlMap: $externalReactionUrlMap, myRawReactionEmoji: $myRawReactionEmoji, repliesCount: $repliesCount, renoteCount: $renoteCount)';
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
            (identical(other.text, text) || other.text == text) &&
            (identical(other.cw, cw) || other.cw == cw) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(
                other._externalTextEmojiUrlMap, _externalTextEmojiUrlMap) &&
            const DeepCollectionEquality()
                .equals(other._reactionCountMap, _reactionCountMap) &&
            const DeepCollectionEquality().equals(
                other._externalReactionUrlMap, _externalReactionUrlMap) &&
            (identical(other.myRawReactionEmoji, myRawReactionEmoji) ||
                other.myRawReactionEmoji == myRawReactionEmoji) &&
            (identical(other.repliesCount, repliesCount) ||
                other.repliesCount == repliesCount) &&
            (identical(other.renoteCount, renoteCount) ||
                other.renoteCount == renoteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      user,
      renote,
      text,
      cw,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_externalTextEmojiUrlMap),
      const DeepCollectionEquality().hash(_reactionCountMap),
      const DeepCollectionEquality().hash(_externalReactionUrlMap),
      myRawReactionEmoji,
      repliesCount,
      renoteCount);

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
      final String? text,
      final String? cw,
      required final List<NoteFile> files,
      @JsonKey(name: 'emojis', defaultValue: {})
      required final Map<String, String> externalTextEmojiUrlMap,
      @JsonKey(name: 'reactions')
      required final Map<String, int> reactionCountMap,
      @JsonKey(name: 'reactionEmojis', defaultValue: {})
      required final Map<String, String> externalReactionUrlMap,
      @JsonKey(name: 'myReaction') final String? myRawReactionEmoji,
      required final int repliesCount,
      required final int renoteCount}) = _$NoteImpl;
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
  String? get text;
  @override
  String? get cw;
  @override
  List<NoteFile> get files;
  @override
  @JsonKey(name: 'emojis', defaultValue: {})
  Map<String, String> get externalTextEmojiUrlMap;
  @override
  @JsonKey(name: 'reactions')
  Map<String, int> get reactionCountMap;
  @override
  @JsonKey(name: 'reactionEmojis', defaultValue: {})
  Map<String, String> get externalReactionUrlMap;
  @override
  @JsonKey(name: 'myReaction')
  String? get myRawReactionEmoji;
  @override
  int get repliesCount;
  @override
  int get renoteCount;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
