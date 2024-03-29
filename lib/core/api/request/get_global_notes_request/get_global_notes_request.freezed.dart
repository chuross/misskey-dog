// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_global_notes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetGlobalNotesRequest _$GetGlobalNotesRequestFromJson(
    Map<String, dynamic> json) {
  return _GetLocalNotesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetGlobalNotesRequest {
  @JsonKey(name: 'withFiles')
  bool? get hasFiles => throw _privateConstructorUsedError;
  String? get untilId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetGlobalNotesRequestCopyWith<GetGlobalNotesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetGlobalNotesRequestCopyWith<$Res> {
  factory $GetGlobalNotesRequestCopyWith(GetGlobalNotesRequest value,
          $Res Function(GetGlobalNotesRequest) then) =
      _$GetGlobalNotesRequestCopyWithImpl<$Res, GetGlobalNotesRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'withFiles') bool? hasFiles,
      String? untilId,
      int? limit});
}

/// @nodoc
class _$GetGlobalNotesRequestCopyWithImpl<$Res,
        $Val extends GetGlobalNotesRequest>
    implements $GetGlobalNotesRequestCopyWith<$Res> {
  _$GetGlobalNotesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasFiles = freezed,
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$GetLocalNotesRequestImplCopyWith<$Res>
    implements $GetGlobalNotesRequestCopyWith<$Res> {
  factory _$$GetLocalNotesRequestImplCopyWith(_$GetLocalNotesRequestImpl value,
          $Res Function(_$GetLocalNotesRequestImpl) then) =
      __$$GetLocalNotesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'withFiles') bool? hasFiles,
      String? untilId,
      int? limit});
}

/// @nodoc
class __$$GetLocalNotesRequestImplCopyWithImpl<$Res>
    extends _$GetGlobalNotesRequestCopyWithImpl<$Res,
        _$GetLocalNotesRequestImpl>
    implements _$$GetLocalNotesRequestImplCopyWith<$Res> {
  __$$GetLocalNotesRequestImplCopyWithImpl(_$GetLocalNotesRequestImpl _value,
      $Res Function(_$GetLocalNotesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasFiles = freezed,
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetLocalNotesRequestImpl(
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

@JsonSerializable(includeIfNull: false)
class _$GetLocalNotesRequestImpl implements _GetLocalNotesRequest {
  const _$GetLocalNotesRequestImpl(
      {@JsonKey(name: 'withFiles') this.hasFiles, this.untilId, this.limit});

  factory _$GetLocalNotesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetLocalNotesRequestImplFromJson(json);

  @override
  @JsonKey(name: 'withFiles')
  final bool? hasFiles;
  @override
  final String? untilId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetGlobalNotesRequest(hasFiles: $hasFiles, untilId: $untilId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocalNotesRequestImpl &&
            (identical(other.hasFiles, hasFiles) ||
                other.hasFiles == hasFiles) &&
            (identical(other.untilId, untilId) || other.untilId == untilId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hasFiles, untilId, limit);

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

abstract class _GetLocalNotesRequest implements GetGlobalNotesRequest {
  const factory _GetLocalNotesRequest(
      {@JsonKey(name: 'withFiles') final bool? hasFiles,
      final String? untilId,
      final int? limit}) = _$GetLocalNotesRequestImpl;

  factory _GetLocalNotesRequest.fromJson(Map<String, dynamic> json) =
      _$GetLocalNotesRequestImpl.fromJson;

  @override
  @JsonKey(name: 'withFiles')
  bool? get hasFiles;
  @override
  String? get untilId;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetLocalNotesRequestImplCopyWith<_$GetLocalNotesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
