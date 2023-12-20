// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_note_reaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateNoteReactionRequest _$CreateNoteReactionRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateNoteReactionRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateNoteReactionRequest {
  String get noteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reaction')
  String get emojiId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNoteReactionRequestCopyWith<CreateNoteReactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNoteReactionRequestCopyWith<$Res> {
  factory $CreateNoteReactionRequestCopyWith(CreateNoteReactionRequest value,
          $Res Function(CreateNoteReactionRequest) then) =
      _$CreateNoteReactionRequestCopyWithImpl<$Res, CreateNoteReactionRequest>;
  @useResult
  $Res call({String noteId, @JsonKey(name: 'reaction') String emojiId});
}

/// @nodoc
class _$CreateNoteReactionRequestCopyWithImpl<$Res,
        $Val extends CreateNoteReactionRequest>
    implements $CreateNoteReactionRequestCopyWith<$Res> {
  _$CreateNoteReactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
    Object? emojiId = null,
  }) {
    return _then(_value.copyWith(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
      emojiId: null == emojiId
          ? _value.emojiId
          : emojiId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNoteReactionRequestImplCopyWith<$Res>
    implements $CreateNoteReactionRequestCopyWith<$Res> {
  factory _$$CreateNoteReactionRequestImplCopyWith(
          _$CreateNoteReactionRequestImpl value,
          $Res Function(_$CreateNoteReactionRequestImpl) then) =
      __$$CreateNoteReactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String noteId, @JsonKey(name: 'reaction') String emojiId});
}

/// @nodoc
class __$$CreateNoteReactionRequestImplCopyWithImpl<$Res>
    extends _$CreateNoteReactionRequestCopyWithImpl<$Res,
        _$CreateNoteReactionRequestImpl>
    implements _$$CreateNoteReactionRequestImplCopyWith<$Res> {
  __$$CreateNoteReactionRequestImplCopyWithImpl(
      _$CreateNoteReactionRequestImpl _value,
      $Res Function(_$CreateNoteReactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
    Object? emojiId = null,
  }) {
    return _then(_$CreateNoteReactionRequestImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
      emojiId: null == emojiId
          ? _value.emojiId
          : emojiId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNoteReactionRequestImpl implements _CreateNoteReactionRequest {
  const _$CreateNoteReactionRequestImpl(
      {required this.noteId, @JsonKey(name: 'reaction') required this.emojiId});

  factory _$CreateNoteReactionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNoteReactionRequestImplFromJson(json);

  @override
  final String noteId;
  @override
  @JsonKey(name: 'reaction')
  final String emojiId;

  @override
  String toString() {
    return 'CreateNoteReactionRequest(noteId: $noteId, emojiId: $emojiId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNoteReactionRequestImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId) &&
            (identical(other.emojiId, emojiId) || other.emojiId == emojiId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, noteId, emojiId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNoteReactionRequestImplCopyWith<_$CreateNoteReactionRequestImpl>
      get copyWith => __$$CreateNoteReactionRequestImplCopyWithImpl<
          _$CreateNoteReactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNoteReactionRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateNoteReactionRequest implements CreateNoteReactionRequest {
  const factory _CreateNoteReactionRequest(
          {required final String noteId,
          @JsonKey(name: 'reaction') required final String emojiId}) =
      _$CreateNoteReactionRequestImpl;

  factory _CreateNoteReactionRequest.fromJson(Map<String, dynamic> json) =
      _$CreateNoteReactionRequestImpl.fromJson;

  @override
  String get noteId;
  @override
  @JsonKey(name: 'reaction')
  String get emojiId;
  @override
  @JsonKey(ignore: true)
  _$$CreateNoteReactionRequestImplCopyWith<_$CreateNoteReactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
