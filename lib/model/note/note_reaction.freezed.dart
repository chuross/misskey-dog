// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

class _$NoteReactionLocalEmojiImpl extends _NoteReactionLocalEmoji {
  const _$NoteReactionLocalEmojiImpl(
      {required this.emoji, required this.reactionCount})
      : super._();

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

abstract class _NoteReactionLocalEmoji extends NoteReaction {
  const factory _NoteReactionLocalEmoji(
      {required final Emoji emoji,
      required final int reactionCount}) = _$NoteReactionLocalEmojiImpl;
  const _NoteReactionLocalEmoji._() : super._();

  @override
  Emoji get emoji;
  @override
  int get reactionCount;
  @override
  @JsonKey(ignore: true)
  _$$NoteReactionLocalEmojiImplCopyWith<_$NoteReactionLocalEmojiImpl>
      get copyWith => throw _privateConstructorUsedError;
}
