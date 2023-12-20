// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notes_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetNotesRequest _$GetNotesRequestFromJson(Map<String, dynamic> json) {
  return _GetNotesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetNotesRequest {
  String get query => throw _privateConstructorUsedError;
  String? get untilId => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNotesRequestCopyWith<GetNotesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotesRequestCopyWith<$Res> {
  factory $GetNotesRequestCopyWith(
          GetNotesRequest value, $Res Function(GetNotesRequest) then) =
      _$GetNotesRequestCopyWithImpl<$Res, GetNotesRequest>;
  @useResult
  $Res call({String query, String? untilId, int? limit});
}

/// @nodoc
class _$GetNotesRequestCopyWithImpl<$Res, $Val extends GetNotesRequest>
    implements $GetNotesRequestCopyWith<$Res> {
  _$GetNotesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$GetNotesRequestImplCopyWith<$Res>
    implements $GetNotesRequestCopyWith<$Res> {
  factory _$$GetNotesRequestImplCopyWith(_$GetNotesRequestImpl value,
          $Res Function(_$GetNotesRequestImpl) then) =
      __$$GetNotesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, String? untilId, int? limit});
}

/// @nodoc
class __$$GetNotesRequestImplCopyWithImpl<$Res>
    extends _$GetNotesRequestCopyWithImpl<$Res, _$GetNotesRequestImpl>
    implements _$$GetNotesRequestImplCopyWith<$Res> {
  __$$GetNotesRequestImplCopyWithImpl(
      _$GetNotesRequestImpl _value, $Res Function(_$GetNotesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? untilId = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$GetNotesRequestImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$GetNotesRequestImpl implements _GetNotesRequest {
  const _$GetNotesRequestImpl({required this.query, this.untilId, this.limit});

  factory _$GetNotesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotesRequestImplFromJson(json);

  @override
  final String query;
  @override
  final String? untilId;
  @override
  final int? limit;

  @override
  String toString() {
    return 'GetNotesRequest(query: $query, untilId: $untilId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotesRequestImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.untilId, untilId) || other.untilId == untilId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, query, untilId, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotesRequestImplCopyWith<_$GetNotesRequestImpl> get copyWith =>
      __$$GetNotesRequestImplCopyWithImpl<_$GetNotesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetNotesRequest implements GetNotesRequest {
  const factory _GetNotesRequest(
      {required final String query,
      final String? untilId,
      final int? limit}) = _$GetNotesRequestImpl;

  factory _GetNotesRequest.fromJson(Map<String, dynamic> json) =
      _$GetNotesRequestImpl.fromJson;

  @override
  String get query;
  @override
  String? get untilId;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetNotesRequestImplCopyWith<_$GetNotesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
