// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Instance _$InstanceFromJson(Map<String, dynamic> json) {
  return _Instance.fromJson(json);
}

/// @nodoc
mixin _$Instance {
  String? get name => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  String? get themeColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InstanceCopyWith<Instance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstanceCopyWith<$Res> {
  factory $InstanceCopyWith(Instance value, $Res Function(Instance) then) =
      _$InstanceCopyWithImpl<$Res, Instance>;
  @useResult
  $Res call({String? name, String iconUrl, String? themeColor});
}

/// @nodoc
class _$InstanceCopyWithImpl<$Res, $Val extends Instance>
    implements $InstanceCopyWith<$Res> {
  _$InstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? iconUrl = null,
    Object? themeColor = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      themeColor: freezed == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstanceImplCopyWith<$Res>
    implements $InstanceCopyWith<$Res> {
  factory _$$InstanceImplCopyWith(
          _$InstanceImpl value, $Res Function(_$InstanceImpl) then) =
      __$$InstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String iconUrl, String? themeColor});
}

/// @nodoc
class __$$InstanceImplCopyWithImpl<$Res>
    extends _$InstanceCopyWithImpl<$Res, _$InstanceImpl>
    implements _$$InstanceImplCopyWith<$Res> {
  __$$InstanceImplCopyWithImpl(
      _$InstanceImpl _value, $Res Function(_$InstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? iconUrl = null,
    Object? themeColor = freezed,
  }) {
    return _then(_$InstanceImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      themeColor: freezed == themeColor
          ? _value.themeColor
          : themeColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstanceImpl implements _Instance {
  const _$InstanceImpl(
      {required this.name, required this.iconUrl, required this.themeColor});

  factory _$InstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstanceImplFromJson(json);

  @override
  final String? name;
  @override
  final String iconUrl;
  @override
  final String? themeColor;

  @override
  String toString() {
    return 'Instance(name: $name, iconUrl: $iconUrl, themeColor: $themeColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstanceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.themeColor, themeColor) ||
                other.themeColor == themeColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconUrl, themeColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InstanceImplCopyWith<_$InstanceImpl> get copyWith =>
      __$$InstanceImplCopyWithImpl<_$InstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstanceImplToJson(
      this,
    );
  }
}

abstract class _Instance implements Instance {
  const factory _Instance(
      {required final String? name,
      required final String iconUrl,
      required final String? themeColor}) = _$InstanceImpl;

  factory _Instance.fromJson(Map<String, dynamic> json) =
      _$InstanceImpl.fromJson;

  @override
  String? get name;
  @override
  String get iconUrl;
  @override
  String? get themeColor;
  @override
  @JsonKey(ignore: true)
  _$$InstanceImplCopyWith<_$InstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
