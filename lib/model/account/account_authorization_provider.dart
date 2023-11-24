import 'package:misskey_dog/core/api/misskey_client_provider.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'package:misskey_dog/model/account/account_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'account_authorization_provider.g.dart';

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

  await ref.watch(accountStateProvider.notifier).setAccount(account.copyWith(apiBaseUrl: apiBaseUrl));

  return account;
}
