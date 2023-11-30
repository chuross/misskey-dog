// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_local_notes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetLocalNotesRequest _$GetLocalNotesRequestFromJson(Map<String, dynamic> json) {
  return _GetLocalNotesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetLocalNotesRequest {
  @JsonKey(name: 'withFiles')
  bool? get hasFiles => throw _privateConstructorUsedError;
  String? get sinceId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLocalNotesRequestCopyWith<GetLocalNotesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLocalNotesRequestCopyWith<$Res> {
  factory $GetLocalNotesRequestCopyWith(GetLocalNotesRequest value,
          $Res Function(GetLocalNotesRequest) then) =
      _$GetLocalNotesRequestCopyWithImpl<$Res, GetLocalNotesRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'withFiles') bool? hasFiles,
      String? sinceId,
      int? limit});
}

/// @nodoc
class _$GetLocalNotesRequestCopyWithImpl<$Res,
        $Val extends GetLocalNotesRequest>
    implements $GetLocalNotesRequestCopyWith<$Res> {
  _$GetLocalNotesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasFiles = freezed,
    Object? sinceId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      hasFiles: freezed == hasFiles
          ? _value.hasFiles
          : hasFiles // ignore: cast_nullable_to_non_nullable
              as bool?,
      sinceId: freezed == sinceId
          ? _value.sinceId
          : sinceId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLocalNotesRequestImplCopyWith<$Res>
    implements $GetLocalNotesRequestCopyWith<$Res> {
  factory _$$GetLocalNotesRequestImplCopyWith(_$GetLocalNotesRequestImpl value,
          $Res Function(_$GetLocalNotesRequestImpl) then) =
      __$$GetLocalNotesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'withFiles') bool? hasFiles,
      String? sinceId,
      int? limit});
}

/// @nodoc
class __$$GetLocalNotesRequestImplCopyWithImpl<$Res>
    extends _$GetLocalNotesRequestCopyWithImpl<$Res, _$GetLocalNotesRequestImpl>
    implements _$$GetLocalNotesRequestImplCopyWith<$Res> {
  __$$GetLocalNotesRequestImplCopyWithImpl(_$GetLocalNotesRequestImpl _value,
      $Res Function(_$GetLocalNotesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasFiles = freezed,
    Object? sinceId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetLocalNotesRequestImpl(
      hasFiles: freezed == hasFiles
          ? _value.hasFiles
          : hasFiles // ignore: cast_nullable_to_non_nullable
              as bool?,
      sinceId: freezed == sinceId
          ? _value.sinceId
          : sinceId // ignore: cast_nullable_to_non_nullable
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
class _$GetLocalNotesRequestImpl implements _GetLocalNotesRequest {
  const _$GetLocalNotesRequestImpl(
      {@JsonKey(name: 'withFiles') this.hasFiles, this.sinceId, this.limit});

  factory _$GetLocalNotesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetLocalNotesRequestImplFromJson(json);

  @override
  @JsonKey(name: 'withFiles')
  final bool? hasFiles;
  @override
  final String? sinceId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetLocalNotesRequest(hasFiles: $hasFiles, sinceId: $sinceId, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocalNotesRequestImpl &&
            (identical(other.hasFiles, hasFiles) ||
                other.hasFiles == hasFiles) &&
            (identical(other.sinceId, sinceId) || other.sinceId == sinceId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasFiles, sinceId, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLocalNotesRequestImplCopyWith<_$GetLocalNotesRequestImpl>
      get copyWith =>
          __$$GetLocalNotesRequestImplCopyWithImpl<_$GetLocalNotesRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetLocalNotesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetLocalNotesRequest implements GetLocalNotesRequest {
  const factory _GetLocalNotesRequest(
      {@JsonKey(name: 'withFiles') final bool? hasFiles,
      final String? sinceId,
      final int? limit}) = _$GetLocalNotesRequestImpl;

  factory _GetLocalNotesRequest.fromJson(Map<String, dynamic> json) =
      _$GetLocalNotesRequestImpl.fromJson;

  @override
  @JsonKey(name: 'withFiles')
  bool? get hasFiles;
  @override
  String? get sinceId;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetLocalNotesRequestImplCopyWith<_$GetLocalNotesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
