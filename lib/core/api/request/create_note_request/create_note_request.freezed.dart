// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateNoteRequest _$CreateNoteRequestFromJson(Map<String, dynamic> json) {
  return _CreateNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateNoteRequest {
  String? get text => throw _privateConstructorUsedError;
  String? get replyId => throw _privateConstructorUsedError;
  String? get renoteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateNoteRequestCopyWith<CreateNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNoteRequestCopyWith<$Res> {
  factory $CreateNoteRequestCopyWith(
          CreateNoteRequest value, $Res Function(CreateNoteRequest) then) =
      _$CreateNoteRequestCopyWithImpl<$Res, CreateNoteRequest>;
  @useResult
  $Res call({String? text, String? replyId, String? renoteId});
}

/// @nodoc
class _$CreateNoteRequestCopyWithImpl<$Res, $Val extends CreateNoteRequest>
    implements $CreateNoteRequestCopyWith<$Res> {
  _$CreateNoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? replyId = freezed,
    Object? renoteId = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String?,
      renoteId: freezed == renoteId
          ? _value.renoteId
          : renoteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNoteRequestImplCopyWith<$Res>
    implements $CreateNoteRequestCopyWith<$Res> {
  factory _$$CreateNoteRequestImplCopyWith(_$CreateNoteRequestImpl value,
          $Res Function(_$CreateNoteRequestImpl) then) =
      __$$CreateNoteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text, String? replyId, String? renoteId});
}

/// @nodoc
class __$$CreateNoteRequestImplCopyWithImpl<$Res>
    extends _$CreateNoteRequestCopyWithImpl<$Res, _$CreateNoteRequestImpl>
    implements _$$CreateNoteRequestImplCopyWith<$Res> {
  __$$CreateNoteRequestImplCopyWithImpl(_$CreateNoteRequestImpl _value,
      $Res Function(_$CreateNoteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? replyId = freezed,
    Object? renoteId = freezed,
  }) {
    return _then(_$CreateNoteRequestImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      replyId: freezed == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String?,
      renoteId: freezed == renoteId
          ? _value.renoteId
          : renoteId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNoteRequestImpl implements _CreateNoteRequest {
  const _$CreateNoteRequestImpl({this.text, this.replyId, this.renoteId});

  factory _$CreateNoteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNoteRequestImplFromJson(json);

  @override
  final String? text;
  @override
  final String? replyId;
  @override
  final String? renoteId;

  @override
  String toString() {
    return 'CreateNoteRequest(text: $text, replyId: $replyId, renoteId: $renoteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNoteRequestImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.renoteId, renoteId) ||
                other.renoteId == renoteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, replyId, renoteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNoteRequestImplCopyWith<_$CreateNoteRequestImpl> get copyWith =>
      __$$CreateNoteRequestImplCopyWithImpl<_$CreateNoteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNoteRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateNoteRequest implements CreateNoteRequest {
  const factory _CreateNoteRequest(
      {final String? text,
      final String? replyId,
      final String? renoteId}) = _$CreateNoteRequestImpl;

  factory _CreateNoteRequest.fromJson(Map<String, dynamic> json) =
      _$CreateNoteRequestImpl.fromJson;

  @override
  String? get text;
  @override
  String? get replyId;
  @override
  String? get renoteId;
  @override
  @JsonKey(ignore: true)
  _$$CreateNoteRequestImplCopyWith<_$CreateNoteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
