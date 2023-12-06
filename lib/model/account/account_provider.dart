import 'dart:convert';

import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/data/data_provider.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_provider.g.dart';

@riverpod
Future<Account?> accountAuthorization(
  AccountAuthorizationRef ref, {
  required String host,
  required String session,
}) async {
  if (host.isEmpty) throw ArgumentError.value(host, 'host is empty');
  if (session.isEmpty) throw ArgumentError.value(session, 'session is empty');

  final apiBaseUrl = "https://$host";

  final client = await ref.watch(misskeyClientProvider(baseUrl: apiBaseUrl).future);
  final account = await client.authorize(session);

  await ref.watch(accountStateProvider.notifier).setAccount(account.copyWith(host: host));

  return account;
}

@riverpod
final class AccountState extends _$AccountState {
  static const _key = 'account_state.account';

  @override
  Future<Account?> build() async {
    final json = await ref.watch(secureStorageProvider).read(key: _key);
    if (json == null) return null;

    return Account.fromJson(jsonDecode(json));
  }

  Future<void> setAccount(Account account) async {
    await ref.watch(secureStorageProvider).write(key: _key, value: jsonEncode(account.toJson()));
    state = AsyncData(account);
  }

  Future<void> clear() async {
    await ref.watch(secureStorageProvider).delete(key: _key);
    state = const AsyncData(null);
  }
}
