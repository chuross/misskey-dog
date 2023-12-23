// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  Instance? get instance => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  bool get isBot => throw _privateConstructorUsedError;
  String? get bannerUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Note>? get pinnedNotes => throw _privateConstructorUsedError;
  int? get followersCount => throw _privateConstructorUsedError;
  int? get followingCount => throw _privateConstructorUsedError;
  int? get notesCount => throw _privateConstructorUsedError;
  bool? get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'emojis', defaultValue: {})
  Map<String, String> get externalEmojiUrlMap =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      String? name,
      String username,
      String? avatarUrl,
      Instance? instance,
      String? host,
      bool isBot,
      String? bannerUrl,
      String? description,
      List<Note>? pinnedNotes,
      int? followersCount,
      int? followingCount,
      int? notesCount,
      bool? isFollowing,
      @JsonKey(name: 'emojis', defaultValue: {})
      Map<String, String> externalEmojiUrlMap});

  $InstanceCopyWith<$Res>? get instance;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? username = null,
    Object? avatarUrl = freezed,
    Object? instance = freezed,
    Object? host = freezed,
    Object? isBot = null,
    Object? bannerUrl = freezed,
    Object? description = freezed,
    Object? pinnedNotes = freezed,
    Object? followersCount = freezed,
    Object? followingCount = freezed,
    Object? notesCount = freezed,
    Object? isFollowing = freezed,
    Object? externalEmojiUrlMap = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as Instance?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      isBot: null == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pinnedNotes: freezed == pinnedNotes
          ? _value.pinnedNotes
          : pinnedNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notesCount: freezed == notesCount
          ? _value.notesCount
          : notesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalEmojiUrlMap: null == externalEmojiUrlMap
          ? _value.externalEmojiUrlMap
          : externalEmojiUrlMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InstanceCopyWith<$Res>? get instance {
    if (_value.instance == null) {
      return null;
    }

    return $InstanceCopyWith<$Res>(_value.instance!, (value) {
      return _then(_value.copyWith(instance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      String? name,
      String username,
      String? avatarUrl,
      Instance? instance,
      String? host,
      bool isBot,
      String? bannerUrl,
      String? description,
      List<Note>? pinnedNotes,
      int? followersCount,
      int? followingCount,
      int? notesCount,
      bool? isFollowing,
      @JsonKey(name: 'emojis', defaultValue: {})
      Map<String, String> externalEmojiUrlMap});

  @override
  $InstanceCopyWith<$Res>? get instance;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? username = null,
    Object? avatarUrl = freezed,
    Object? instance = freezed,
    Object? host = freezed,
    Object? isBot = null,
    Object? bannerUrl = freezed,
    Object? description = freezed,
    Object? pinnedNotes = freezed,
    Object? followersCount = freezed,
    Object? followingCount = freezed,
    Object? notesCount = freezed,
    Object? isFollowing = freezed,
    Object? externalEmojiUrlMap = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as Instance?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      isBot: null == isBot
          ? _value.isBot
          : isBot // ignore: cast_nullable_to_non_nullable
              as bool,
      bannerUrl: freezed == bannerUrl
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pinnedNotes: freezed == pinnedNotes
          ? _value._pinnedNotes
          : pinnedNotes // ignore: cast_nullable_to_non_nullable
              as List<Note>?,
      followersCount: freezed == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      followingCount: freezed == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      notesCount: freezed == notesCount
          ? _value.notesCount
          : notesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFollowing: freezed == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool?,
      externalEmojiUrlMap: null == externalEmojiUrlMap
          ? _value._externalEmojiUrlMap
          : externalEmojiUrlMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl extends _User {
  const _$UserImpl(
      {required this.id,
      this.createdAt,
      this.name,
      required this.username,
      this.avatarUrl,
      this.instance,
      this.host,
      required this.isBot,
      this.bannerUrl,
      this.description,
      final List<Note>? pinnedNotes,
      this.followersCount,
      this.followingCount,
      this.notesCount,
      this.isFollowing,
      @JsonKey(name: 'emojis', defaultValue: {})
      required final Map<String, String> externalEmojiUrlMap})
      : _pinnedNotes = pinnedNotes,
        _externalEmojiUrlMap = externalEmojiUrlMap,
        super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? createdAt;
  @override
  final String? name;
  @override
  final String username;
  @override
  final String? avatarUrl;
  @override
  final Instance? instance;
  @override
  final String? host;
  @override
  final bool isBot;
  @override
  final String? bannerUrl;
  @override
  final String? description;
  final List<Note>? _pinnedNotes;
  @override
  List<Note>? get pinnedNotes {
    final value = _pinnedNotes;
    if (value == null) return null;
    if (_pinnedNotes is EqualUnmodifiableListView) return _pinnedNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? followersCount;
  @override
  final int? followingCount;
  @override
  final int? notesCount;
  @override
  final bool? isFollowing;
  final Map<String, String> _externalEmojiUrlMap;
  @override
  @JsonKey(name: 'emojis', defaultValue: {})
  Map<String, String> get externalEmojiUrlMap {
    if (_externalEmojiUrlMap is EqualUnmodifiableMapView)
      return _externalEmojiUrlMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_externalEmojiUrlMap);
  }

  @override
  String toString() {
    return 'User(id: $id, createdAt: $createdAt, name: $name, username: $username, avatarUrl: $avatarUrl, instance: $instance, host: $host, isBot: $isBot, bannerUrl: $bannerUrl, description: $description, pinnedNotes: $pinnedNotes, followersCount: $followersCount, followingCount: $followingCount, notesCount: $notesCount, isFollowing: $isFollowing, externalEmojiUrlMap: $externalEmojiUrlMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.instance, instance) ||
                other.instance == instance) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.isBot, isBot) || other.isBot == isBot) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._pinnedNotes, _pinnedNotes) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.notesCount, notesCount) ||
                other.notesCount == notesCount) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            const DeepCollectionEquality()
                .equals(other._externalEmojiUrlMap, _externalEmojiUrlMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      name,
      username,
      avatarUrl,
      instance,
      host,
      isBot,
      bannerUrl,
      description,
      const DeepCollectionEquality().hash(_pinnedNotes),
      followersCount,
      followingCount,
      notesCount,
      isFollowing,
      const DeepCollectionEquality().hash(_externalEmojiUrlMap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      final DateTime? createdAt,
      final String? name,
      required final String username,
      final String? avatarUrl,
      final Instance? instance,
      final String? host,
      required final bool isBot,
      final String? bannerUrl,
      final String? description,
      final List<Note>? pinnedNotes,
      final int? followersCount,
      final int? followingCount,
      final int? notesCount,
      final bool? isFollowing,
      @JsonKey(name: 'emojis', defaultValue: {})
      required final Map<String, String> externalEmojiUrlMap}) = _$UserImpl;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get createdAt;
  @override
  String? get name;
  @override
  String get username;
  @override
  String? get avatarUrl;
  @override
  Instance? get instance;
  @override
  String? get host;
  @override
  bool get isBot;
  @override
  String? get bannerUrl;
  @override
  String? get description;
  @override
  List<Note>? get pinnedNotes;
  @override
  int? get followersCount;
  @override
  int? get followingCount;
  @override
  int? get notesCount;
  @override
  bool? get isFollowing;
  @override
  @JsonKey(name: 'emojis', defaultValue: {})
  Map<String, String> get externalEmojiUrlMap;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
