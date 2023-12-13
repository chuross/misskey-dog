// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notes_by_hash_tag_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNotesByHashTagRequest _$GetNotesByHashTagRequestFromJson(
    Map<String, dynamic> json) {
  return _GetNotesByHashTagRequest.fromJson(json);
}

/// @nodoc
mixin _$GetNotesByHashTagRequest {
  @JsonKey(name: 'tag')
  String get hashTag => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get untilId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotesByHashTagRequestCopyWith<GetNotesByHashTagRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotesByHashTagRequestCopyWith<$Res> {
  factory $GetNotesByHashTagRequestCopyWith(GetNotesByHashTagRequest value,
          $Res Function(GetNotesByHashTagRequest) then) =
      _$GetNotesByHashTagRequestCopyWithImpl<$Res, GetNotesByHashTagRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tag') String hashTag, int? limit, String? untilId});
}

/// @nodoc
class _$GetNotesByHashTagRequestCopyWithImpl<$Res,
        $Val extends GetNotesByHashTagRequest>
    implements $GetNotesByHashTagRequestCopyWith<$Res> {
  _$GetNotesByHashTagRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashTag = null,
    Object? limit = freezed,
    Object? untilId = freezed,
  }) {
    return _then(_value.copyWith(
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      untilId: freezed == untilId
          ? _value.untilId
          : untilId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotesByHashTagRequestImplCopyWith<$Res>
    implements $GetNotesByHashTagRequestCopyWith<$Res> {
  factory _$$GetNotesByHashTagRequestImplCopyWith(
          _$GetNotesByHashTagRequestImpl value,
          $Res Function(_$GetNotesByHashTagRequestImpl) then) =
      __$$GetNotesByHashTagRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tag') String hashTag, int? limit, String? untilId});
}

/// @nodoc
class __$$GetNotesByHashTagRequestImplCopyWithImpl<$Res>
    extends _$GetNotesByHashTagRequestCopyWithImpl<$Res,
        _$GetNotesByHashTagRequestImpl>
    implements _$$GetNotesByHashTagRequestImplCopyWith<$Res> {
  __$$GetNotesByHashTagRequestImplCopyWithImpl(
      _$GetNotesByHashTagRequestImpl _value,
      $Res Function(_$GetNotesByHashTagRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashTag = null,
    Object? limit = freezed,
    Object? untilId = freezed,
  }) {
    return _then(_$GetNotesByHashTagRequestImpl(
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      untilId: freezed == untilId
          ? _value.untilId
          : untilId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNotesByHashTagRequestImpl implements _GetNotesByHashTagRequest {
  const _$GetNotesByHashTagRequestImpl(
      {@JsonKey(name: 'tag') required this.hashTag, this.limit, this.untilId});

  factory _$GetNotesByHashTagRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotesByHashTagRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tag')
  final String hashTag;
  @override
  final int? limit;
  @override
  final String? untilId;

  @override
  String toString() {
    return 'GetNotesByHashTagRequest(hashTag: $hashTag, limit: $limit, untilId: $untilId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotesByHashTagRequestImpl &&
            (identical(other.hashTag, hashTag) || other.hashTag == hashTag) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.untilId, untilId) || other.untilId == untilId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hashTag, limit, untilId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotesByHashTagRequestImplCopyWith<_$GetNotesByHashTagRequestImpl>
      get copyWith => __$$GetNotesByHashTagRequestImplCopyWithImpl<
          _$GetNotesByHashTagRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotesByHashTagRequestImplToJson(
      this,
    );
  }
}

abstract class _GetNotesByHashTagRequest implements GetNotesByHashTagRequest {
  const factory _GetNotesByHashTagRequest(
      {@JsonKey(name: 'tag') required final String hashTag,
      final int? limit,
      final String? untilId}) = _$GetNotesByHashTagRequestImpl;

  factory _GetNotesByHashTagRequest.fromJson(Map<String, dynamic> json) =
      _$GetNotesByHashTagRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tag')
  String get hashTag;
  @override
  int? get limit;
  @override
  String? get untilId;
  @override
  @JsonKey(ignore: true)
  _$$GetNotesByHashTagRequestImplCopyWith<_$GetNotesByHashTagRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
