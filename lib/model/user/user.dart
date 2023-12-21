// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/instance/instance.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    required String id,
    String? name,
    required String username,
    String? avatarUrl,
    Instance? instance,
    required bool isBot,
    String? bannerUrl,
    String? description,
    int? followersCount,
    int? followingCount,
    int? notesCount,
    @JsonKey(name: 'emojis', defaultValue: {}) required Map<String, String> externalEmojiUrlMap,
  }) = _User;

  String get displayName => name ?? username;
  bool get isLocal => instance == null;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
