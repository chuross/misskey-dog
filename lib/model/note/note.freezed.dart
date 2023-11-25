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
  Map<String, int> get reactions => throw _privateConstructorUsedError;
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
      Map<String, int> reactions,
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
    Object? reactions = null,
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
      reactions: null == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
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
      Map<String, int> reactions,
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
    Object? reactions = null,
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
      reactions: null == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
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
class _$NoteImpl implements _Note {
  const _$NoteImpl(
      {required this.id,
      required this.user,
      this.renote,
      required this.repliesCount,
      required this.renoteCount,
      required final Map<String, int> reactions,
      this.text})
      : _reactions = reactions;

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
  final Map<String, int> _reactions;
  @override
  Map<String, int> get reactions {
    if (_reactions is EqualUnmodifiableMapView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_reactions);
  }

  @override
  final String? text;

  @override
  String toString() {
    return 'Note(id: $id, user: $user, renote: $renote, repliesCount: $repliesCount, renoteCount: $renoteCount, reactions: $reactions, text: $text)';
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
                .equals(other._reactions, _reactions) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, renote, repliesCount,
      renoteCount, const DeepCollectionEquality().hash(_reactions), text);

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

abstract class _Note implements Note {
  const factory _Note(
      {required final String id,
      required final User user,
      final Note? renote,
      required final int repliesCount,
      required final int renoteCount,
      required final Map<String, int> reactions,
      final String? text}) = _$NoteImpl;

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
  Map<String, int> get reactions;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$NoteImplCopyWith<_$NoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NoteReaction _$NoteReactionFromJson(Map<String, dynamic> json) {
  return _NoteReaction.fromJson(json);
}

/// @nodoc
mixin _$NoteReaction {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call({String name});
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
abstract class _$$NoteReactionImplCopyWith<$Res>
    implements $NoteReactionCopyWith<$Res> {
  factory _$$NoteReactionImplCopyWith(
          _$NoteReactionImpl value, $Res Function(_$NoteReactionImpl) then) =
      __$$NoteReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NoteReactionImplCopyWithImpl<$Res>
    extends _$NoteReactionCopyWithImpl<$Res, _$NoteReactionImpl>
    implements _$$NoteReactionImplCopyWith<$Res> {
  __$$NoteReactionImplCopyWithImpl(
      _$NoteReactionImpl _value, $Res Function(_$NoteReactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NoteReactionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteReactionImpl implements _NoteReaction {
  const _$NoteReactionImpl({required this.name});

  factory _$NoteReactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteReactionImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'NoteReaction(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteReactionImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteReactionImplCopyWith<_$NoteReactionImpl> get copyWith =>
      __$$NoteReactionImplCopyWithImpl<_$NoteReactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteReactionImplToJson(
      this,
    );
  }
}

abstract class _NoteReaction implements NoteReaction {
  const factory _NoteReaction({required final String name}) =
      _$NoteReactionImpl;

  factory _NoteReaction.fromJson(Map<String, dynamic> json) =
      _$NoteReactionImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$NoteReactionImplCopyWith<_$NoteReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
