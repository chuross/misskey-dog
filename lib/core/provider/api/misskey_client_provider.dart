import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/provider/api/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'misskey_client_provider.g.dart';

@riverpod
MisskeyClient misskeyClient(MisskeyClientRef ref, {String? baseUrl}) {
  final dio = ref.watch(dioProvider);
  return MisskeyClient(dio, baseUrl: baseUrl ?? '');
}
