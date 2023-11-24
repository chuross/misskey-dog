import 'dart:convert';

import 'package:misskey_dog/core/data/secure_storage_provider.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@riverpod
final class AuthState extends _$AuthState {
  static const _key = 'auth_state.authentication';

  @override
  Future<Account?> build() async {
    final json = await ref.watch(secureStorageProvider).read(key: _key);
    if (json == null) return null;

    return Account.fromJson(jsonDecode(json));
  }

  Future<void> setAuthentication(Account account) async {
    await ref.watch(secureStorageProvider).write(key: _key, value: jsonEncode(account.toJson()));
    state = AsyncData(account);
  }

  Future<void> clear() async {
    await ref.watch(secureStorageProvider).delete(key: _key);
    state = const AsyncData(null);

    ref.invalidate(authStateProvider);
  }
}
