// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_note_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNoteRequest _$GetNoteRequestFromJson(Map<String, dynamic> json) {
  return _GetNoteRequest.fromJson(json);
}

/// @nodoc
mixin _$GetNoteRequest {
  String get noteId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNoteRequestCopyWith<GetNoteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNoteRequestCopyWith<$Res> {
  factory $GetNoteRequestCopyWith(
          GetNoteRequest value, $Res Function(GetNoteRequest) then) =
      _$GetNoteRequestCopyWithImpl<$Res, GetNoteRequest>;
  @useResult
  $Res call({String noteId});
}

/// @nodoc
class _$GetNoteRequestCopyWithImpl<$Res, $Val extends GetNoteRequest>
    implements $GetNoteRequestCopyWith<$Res> {
  _$GetNoteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
  }) {
    return _then(_value.copyWith(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNoteRequestImplCopyWith<$Res>
    implements $GetNoteRequestCopyWith<$Res> {
  factory _$$GetNoteRequestImplCopyWith(_$GetNoteRequestImpl value,
          $Res Function(_$GetNoteRequestImpl) then) =
      __$$GetNoteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String noteId});
}

/// @nodoc
class __$$GetNoteRequestImplCopyWithImpl<$Res>
    extends _$GetNoteRequestCopyWithImpl<$Res, _$GetNoteRequestImpl>
    implements _$$GetNoteRequestImplCopyWith<$Res> {
  __$$GetNoteRequestImplCopyWithImpl(
      _$GetNoteRequestImpl _value, $Res Function(_$GetNoteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteId = null,
  }) {
    return _then(_$GetNoteRequestImpl(
      noteId: null == noteId
          ? _value.noteId
          : noteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNoteRequestImpl implements _GetNoteRequest {
  const _$GetNoteRequestImpl({required this.noteId});

  factory _$GetNoteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNoteRequestImplFromJson(json);

  @override
  final String noteId;

  @override
  String toString() {
    return 'GetNoteRequest(noteId: $noteId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNoteRequestImpl &&
            (identical(other.noteId, noteId) || other.noteId == noteId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, noteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNoteRequestImplCopyWith<_$GetNoteRequestImpl> get copyWith =>
      __$$GetNoteRequestImplCopyWithImpl<_$GetNoteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNoteRequestImplToJson(
      this,
    );
  }
}

abstract class _GetNoteRequest implements GetNoteRequest {
  const factory _GetNoteRequest({required final String noteId}) =
      _$GetNoteRequestImpl;

  factory _GetNoteRequest.fromJson(Map<String, dynamic> json) =
      _$GetNoteRequestImpl.fromJson;

  @override
  String get noteId;
  @override
  @JsonKey(ignore: true)
  _$$GetNoteRequestImplCopyWith<_$GetNoteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
