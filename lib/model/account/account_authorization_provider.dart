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

  final client = ref.watch(misskeyClientProvider(baseUrl: "https://$host"));
  final authentication = await client.authorize(session);

  await ref.watch(accountStateProvider.notifier).setAuthentication(authentication);

  return authentication;
}