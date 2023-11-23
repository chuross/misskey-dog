import 'dart:convert';

import 'package:misskey_dog/core/storage/secure_storage_provider.dart';
import 'package:misskey_dog/model/auth/authentication.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@riverpod
final class AuthState extends _$AuthState {
  static const _key = 'auth_state.authentication';

  @override
  Future<Authentication?> build() async {
    final json = await ref.watch(secureStorageProvider).read(key: _key);
    if (json == null) return null;

    return Authentication.fromJson(jsonDecode(json));
  }

  Future<void> setAuthentication(Authentication authentication) async {
    await ref.watch(secureStorageProvider).write(key: _key, value: jsonEncode(authentication.toJson()));
    state = AsyncData(authentication);
  }
}
