// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/instance/instance.dart';
import 'package:misskey_dog/model/note/note.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    required String id,
    DateTime? createdAt,
    String? name,
    required String username,
    String? avatarUrl,
    Instance? instance,
    String? host,
    required bool isBot,
    String? bannerUrl,
    String? description,
    List<Note>? pinnedNotes,
    int? followersCount,
    int? followingCount,
    int? notesCount,
    bool? isFollowing,
    @JsonKey(name: 'emojis', defaultValue: {}) required Map<String, String> externalEmojiUrlMap,
  }) = _User;

  String get displayName => name ?? username;
  bool get isLocal => instance == null;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
