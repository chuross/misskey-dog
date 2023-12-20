// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_hash_tag_notes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetHashTagNotesRequest _$GetHashTagNotesRequestFromJson(
    Map<String, dynamic> json) {
  return _GetHashTagNotesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetHashTagNotesRequest {
  @JsonKey(name: 'tag')
  String get hashTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'withFiles')
  bool? get hasFiles => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  String? get untilId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetHashTagNotesRequestCopyWith<GetHashTagNotesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHashTagNotesRequestCopyWith<$Res> {
  factory $GetHashTagNotesRequestCopyWith(GetHashTagNotesRequest value,
          $Res Function(GetHashTagNotesRequest) then) =
      _$GetHashTagNotesRequestCopyWithImpl<$Res, GetHashTagNotesRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tag') String hashTag,
      @JsonKey(name: 'withFiles') bool? hasFiles,
      int? limit,
      String? untilId});
}

/// @nodoc
class _$GetHashTagNotesRequestCopyWithImpl<$Res,
        $Val extends GetHashTagNotesRequest>
    implements $GetHashTagNotesRequestCopyWith<$Res> {
  _$GetHashTagNotesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashTag = null,
    Object? hasFiles = freezed,
    Object? limit = freezed,
    Object? untilId = freezed,
  }) {
    return _then(_value.copyWith(
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      hasFiles: freezed == hasFiles
          ? _value.hasFiles
          : hasFiles // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$GetHashTagNotesRequestImplCopyWith<$Res>
    implements $GetHashTagNotesRequestCopyWith<$Res> {
  factory _$$GetHashTagNotesRequestImplCopyWith(
          _$GetHashTagNotesRequestImpl value,
          $Res Function(_$GetHashTagNotesRequestImpl) then) =
      __$$GetHashTagNotesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tag') String hashTag,
      @JsonKey(name: 'withFiles') bool? hasFiles,
      int? limit,
      String? untilId});
}

/// @nodoc
class __$$GetHashTagNotesRequestImplCopyWithImpl<$Res>
    extends _$GetHashTagNotesRequestCopyWithImpl<$Res,
        _$GetHashTagNotesRequestImpl>
    implements _$$GetHashTagNotesRequestImplCopyWith<$Res> {
  __$$GetHashTagNotesRequestImplCopyWithImpl(
      _$GetHashTagNotesRequestImpl _value,
      $Res Function(_$GetHashTagNotesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hashTag = null,
    Object? hasFiles = freezed,
    Object? limit = freezed,
    Object? untilId = freezed,
  }) {
    return _then(_$GetHashTagNotesRequestImpl(
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      hasFiles: freezed == hasFiles
          ? _value.hasFiles
          : hasFiles // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$GetHashTagNotesRequestImpl implements _GetHashTagNotesRequest {
  const _$GetHashTagNotesRequestImpl(
      {@JsonKey(name: 'tag') required this.hashTag,
      @JsonKey(name: 'withFiles') this.hasFiles,
      this.limit,
      this.untilId});

  factory _$GetHashTagNotesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetHashTagNotesRequestImplFromJson(json);

  @override
  @JsonKey(name: 'tag')
  final String hashTag;
  @override
  @JsonKey(name: 'withFiles')
  final bool? hasFiles;
  @override
  final int? limit;
  @override
  final String? untilId;

  @override
  String toString() {
    return 'GetHashTagNotesRequest(hashTag: $hashTag, hasFiles: $hasFiles, limit: $limit, untilId: $untilId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHashTagNotesRequestImpl &&
            (identical(other.hashTag, hashTag) || other.hashTag == hashTag) &&
            (identical(other.hasFiles, hasFiles) ||
                other.hasFiles == hasFiles) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.untilId, untilId) || other.untilId == untilId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hashTag, hasFiles, limit, untilId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHashTagNotesRequestImplCopyWith<_$GetHashTagNotesRequestImpl>
      get copyWith => __$$GetHashTagNotesRequestImplCopyWithImpl<
          _$GetHashTagNotesRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetHashTagNotesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetHashTagNotesRequest implements GetHashTagNotesRequest {
  const factory _GetHashTagNotesRequest(
      {@JsonKey(name: 'tag') required final String hashTag,
      @JsonKey(name: 'withFiles') final bool? hasFiles,
      final int? limit,
      final String? untilId}) = _$GetHashTagNotesRequestImpl;

  factory _GetHashTagNotesRequest.fromJson(Map<String, dynamic> json) =
      _$GetHashTagNotesRequestImpl.fromJson;

  @override
  @JsonKey(name: 'tag')
  String get hashTag;
  @override
  @JsonKey(name: 'withFiles')
  bool? get hasFiles;
  @override
  int? get limit;
  @override
  String? get untilId;
  @override
  @JsonKey(ignore: true)
  _$$GetHashTagNotesRequestImplCopyWith<_$GetHashTagNotesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
