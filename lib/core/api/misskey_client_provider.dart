import 'package:misskey_dog/core/api/dio_provider.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/model/account/account_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_client_provider.g.dart';

@riverpod
Future<MisskeyClient> misskeyClient(MisskeyClientRef ref, {String? baseUrl}) async {
  final dio = ref.watch(dioProvider);
  final account = await ref.watch(accountStateProvider.future);

  return MisskeyClient(dio, baseUrl: baseUrl ?? account?.apiBaseUrl ?? '');
}
