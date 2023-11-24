import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String username,
    String? avatarUrl,
    required bool isBot,
    String? bannerUrl,
    String? description,
    required int followersCount,
    required int followingCount,
    required int notesCount,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
