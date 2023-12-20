// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_file_properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoteFileProperties _$NoteFilePropertiesFromJson(Map<String, dynamic> json) {
  return _NoteFileProperties.fromJson(json);
}

/// @nodoc
mixin _$NoteFileProperties {
  double? get width => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteFilePropertiesCopyWith<NoteFileProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteFilePropertiesCopyWith<$Res> {
  factory $NoteFilePropertiesCopyWith(
          NoteFileProperties value, $Res Function(NoteFileProperties) then) =
      _$NoteFilePropertiesCopyWithImpl<$Res, NoteFileProperties>;
  @useResult
  $Res call({double? width, double? height});
}

/// @nodoc
class _$NoteFilePropertiesCopyWithImpl<$Res, $Val extends NoteFileProperties>
    implements $NoteFilePropertiesCopyWith<$Res> {
  _$NoteFilePropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteFilePropertiesImplCopyWith<$Res>
    implements $NoteFilePropertiesCopyWith<$Res> {
  factory _$$NoteFilePropertiesImplCopyWith(_$NoteFilePropertiesImpl value,
          $Res Function(_$NoteFilePropertiesImpl) then) =
      __$$NoteFilePropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? width, double? height});
}

/// @nodoc
class __$$NoteFilePropertiesImplCopyWithImpl<$Res>
    extends _$NoteFilePropertiesCopyWithImpl<$Res, _$NoteFilePropertiesImpl>
    implements _$$NoteFilePropertiesImplCopyWith<$Res> {
  __$$NoteFilePropertiesImplCopyWithImpl(_$NoteFilePropertiesImpl _value,
      $Res Function(_$NoteFilePropertiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$NoteFilePropertiesImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteFilePropertiesImpl implements _NoteFileProperties {
  _$NoteFilePropertiesImpl({this.width, this.height});

  factory _$NoteFilePropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteFilePropertiesImplFromJson(json);

  @override
  final double? width;
  @override
  final double? height;

  @override
  String toString() {
    return 'NoteFileProperties(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteFilePropertiesImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteFilePropertiesImplCopyWith<_$NoteFilePropertiesImpl> get copyWith =>
      __$$NoteFilePropertiesImplCopyWithImpl<_$NoteFilePropertiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteFilePropertiesImplToJson(
      this,
    );
  }
}

abstract class _NoteFileProperties implements NoteFileProperties {
  factory _NoteFileProperties({final double? width, final double? height}) =
      _$NoteFilePropertiesImpl;

  factory _NoteFileProperties.fromJson(Map<String, dynamic> json) =
      _$NoteFilePropertiesImpl.fromJson;

  @override
  double? get width;
  @override
  double? get height;
  @override
  @JsonKey(ignore: true)
  _$$NoteFilePropertiesImplCopyWith<_$NoteFilePropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
