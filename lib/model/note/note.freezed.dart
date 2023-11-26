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
  User get user => throw _privateConstructorUsedError;
  Note? get renote => throw _privateConstructorUsedError;
  int get repliesCount => throw _privateConstructorUsedError;
  int get renoteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactions')
  Map<String, int> get rawReactions => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

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
      User user,
      Note? renote,
      int repliesCount,
      int renoteCount,
      @JsonKey(name: 'reactions') Map<String, int> rawReactions,
      String? text});

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
    Object? user = null,
    Object? renote = freezed,
    Object? repliesCount = null,
    Object? renoteCount = null,
    Object? rawReactions = null,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      User user,
      Note? renote,
      int repliesCount,
      int renoteCount,
      @JsonKey(name: 'reactions') Map<String, int> rawReactions,
      String? text});

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
    Object? user = null,
    Object? renote = freezed,
    Object? repliesCount = null,
    Object? renoteCount = null,
    Object? rawReactions = null,
    Object? text = freezed,
  }) {
    return _then(_$NoteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteImpl extends _Note {
  const _$NoteImpl(
      {required this.id,
      required this.user,
      this.renote,
      required this.repliesCount,
      required this.renoteCount,
      @JsonKey(name: 'reactions') required final Map<String, int> rawReactions,
      this.text})
      : _rawReactions = rawReactions,
        super._();

  factory _$NoteImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteImplFromJson(json);

  @override
  final String id;
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

  @override
  String toString() {
    return 'Note(id: $id, user: $user, renote: $renote, repliesCount: $repliesCount, renoteCount: $renoteCount, rawReactions: $rawReactions, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.renote, renote) || other.renote == renote) &&
            (identical(other.repliesCount, repliesCount) ||
                other.repliesCount == repliesCount) &&
            (identical(other.renoteCount, renoteCount) ||
                other.renoteCount == renoteCount) &&
            const DeepCollectionEquality()
                .equals(other._rawReactions, _rawReactions) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, renote, repliesCount,
      renoteCount, const DeepCollectionEquality().hash(_rawReactions), text);

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
      required final User user,
      final Note? renote,
      required final int repliesCount,
      required final int renoteCount,
      @JsonKey(name: 'reactions') required final Map<String, int> rawReactions,
      final String? text}) = _$NoteImpl;
  const _Note._() : super._();

  factory _Note.fromJson(Map<String, dynamic> json) = _$NoteImpl.fromJson;

  @override
  String get id;
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
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteReaction {
  Emoji get emoji => throw _privateConstructorUsedError;
  int get reactionCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteReactionCopyWith<NoteReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteReactionCopyWith<$Res> {
  factory $NoteReactionCopyWith(
          NoteReaction value, $Res Function(NoteReaction) then) =
      _$NoteReactionCopyWithImpl<$Res, NoteReaction>;
  @useResult
  $Res call({Emoji emoji, int reactionCount});
}

/// @nodoc
class _$NoteReactionCopyWithImpl<$Res, $Val extends NoteReaction>
    implements $NoteReactionCopyWith<$Res> {
  _$NoteReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? reactionCount = null,
  }) {
    return _then(_value.copyWith(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
      reactionCount: null == reactionCount
          ? _value.reactionCount
          : reactionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteReactionLocalEmojiImplCopyWith<$Res>
    implements $NoteReactionCopyWith<$Res> {
  factory _$$NoteReactionLocalEmojiImplCopyWith(
          _$NoteReactionLocalEmojiImpl value,
          $Res Function(_$NoteReactionLocalEmojiImpl) then) =
      __$$NoteReactionLocalEmojiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Emoji emoji, int reactionCount});
}

/// @nodoc
class __$$NoteReactionLocalEmojiImplCopyWithImpl<$Res>
    extends _$NoteReactionCopyWithImpl<$Res, _$NoteReactionLocalEmojiImpl>
    implements _$$NoteReactionLocalEmojiImplCopyWith<$Res> {
  __$$NoteReactionLocalEmojiImplCopyWithImpl(
      _$NoteReactionLocalEmojiImpl _value,
      $Res Function(_$NoteReactionLocalEmojiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emoji = null,
    Object? reactionCount = null,
  }) {
    return _then(_$NoteReactionLocalEmojiImpl(
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as Emoji,
      reactionCount: null == reactionCount
          ? _value.reactionCount
          : reactionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoteReactionLocalEmojiImpl implements _NoteReactionLocalEmoji {
  const _$NoteReactionLocalEmojiImpl(
      {required this.emoji, required this.reactionCount});

  @override
  final Emoji emoji;
  @override
  final int reactionCount;

  @override
  String toString() {
    return 'NoteReaction(emoji: $emoji, reactionCount: $reactionCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteReactionLocalEmojiImpl &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.reactionCount, reactionCount) ||
                other.reactionCount == reactionCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emoji, reactionCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteReactionLocalEmojiImplCopyWith<_$NoteReactionLocalEmojiImpl>
      get copyWith => __$$NoteReactionLocalEmojiImplCopyWithImpl<
          _$NoteReactionLocalEmojiImpl>(this, _$identity);
}

abstract class _NoteReactionLocalEmoji implements NoteReaction {
  const factory _NoteReactionLocalEmoji(
      {required final Emoji emoji,
      required final int reactionCount}) = _$NoteReactionLocalEmojiImpl;

  @override
  Emoji get emoji;
  @override
  int get reactionCount;
  @override
  @JsonKey(ignore: true)
  _$$NoteReactionLocalEmojiImplCopyWith<_$NoteReactionLocalEmojiImpl>
      get copyWith => throw _privateConstructorUsedError;
}
