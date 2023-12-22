// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_notes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetUserNotesRequest _$GetUserNotesRequestFromJson(Map<String, dynamic> json) {
  return _GetUserNotesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetUserNotesRequest {
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'withFiles')
  bool? get hasFiles => throw _privateConstructorUsedError;
  String? get untilId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUserNotesRequestCopyWith<GetUserNotesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserNotesRequestCopyWith<$Res> {
  factory $GetUserNotesRequestCopyWith(
          GetUserNotesRequest value, $Res Function(GetUserNotesRequest) then) =
      _$GetUserNotesRequestCopyWithImpl<$Res, GetUserNotesRequest>;
  @useResult
  $Res call(
      {String userId,
      @JsonKey(name: 'withFiles') bool? hasFiles,
      String? untilId,
      int? limit});
}

/// @nodoc
class _$GetUserNotesRequestCopyWithImpl<$Res, $Val extends GetUserNotesRequest>
    implements $GetUserNotesRequestCopyWith<$Res> {
  _$GetUserNotesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hasFiles = freezed,
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hasFiles: freezed == hasFiles
          ? _value.hasFiles
          : hasFiles // ignore: cast_nullable_to_non_nullable
              as bool?,
      untilId: freezed == untilId
          ? _value.untilId
          : untilId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserNotesRequestImplCopyWith<$Res>
    implements $GetUserNotesRequestCopyWith<$Res> {
  factory _$$GetUserNotesRequestImplCopyWith(_$GetUserNotesRequestImpl value,
          $Res Function(_$GetUserNotesRequestImpl) then) =
      __$$GetUserNotesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      @JsonKey(name: 'withFiles') bool? hasFiles,
      String? untilId,
      int? limit});
}

/// @nodoc
class __$$GetUserNotesRequestImplCopyWithImpl<$Res>
    extends _$GetUserNotesRequestCopyWithImpl<$Res, _$GetUserNotesRequestImpl>
    implements _$$GetUserNotesRequestImplCopyWith<$Res> {
  __$$GetUserNotesRequestImplCopyWithImpl(_$GetUserNotesRequestImpl _value,
      $Res Function(_$GetUserNotesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hasFiles = freezed,
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetUserNotesRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      hasFiles: freezed == hasFiles
          ? _value.hasFiles
          : hasFiles // ignore: cast_nullable_to_non_nullable
              as bool?,
      untilId: freezed == untilId
          ? _value.untilId
          : untilId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetUserNotesRequestImpl implements _GetUserNotesRequest {
  _$GetUserNotesRequestImpl(
      {required this.userId,
      @JsonKey(name: 'withFiles') this.hasFiles,
      this.untilId,
      this.limit});

  factory _$GetUserNotesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserNotesRequestImplFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey(name: 'withFiles')
  final bool? hasFiles;
  @override
  final String? untilId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetUserNotesRequest(userId: $userId, hasFiles: $hasFiles, untilId: $untilId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserNotesRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hasFiles, hasFiles) ||
                other.hasFiles == hasFiles) &&
            (identical(other.untilId, untilId) || other.untilId == untilId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, hasFiles, untilId, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserNotesRequestImplCopyWith<_$GetUserNotesRequestImpl> get copyWith =>
      __$$GetUserNotesRequestImplCopyWithImpl<_$GetUserNotesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserNotesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetUserNotesRequest implements GetUserNotesRequest {
  factory _GetUserNotesRequest(
      {required final String userId,
      @JsonKey(name: 'withFiles') final bool? hasFiles,
      final String? untilId,
      final int? limit}) = _$GetUserNotesRequestImpl;

  factory _GetUserNotesRequest.fromJson(Map<String, dynamic> json) =
      _$GetUserNotesRequestImpl.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(name: 'withFiles')
  bool? get hasFiles;
  @override
  String? get untilId;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetUserNotesRequestImplCopyWith<_$GetUserNotesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
