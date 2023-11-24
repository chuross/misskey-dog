import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/model/account/account_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  return dio;
}

@riverpod
Future<MisskeyClient> misskeyClient(MisskeyClientRef ref, {String? baseUrl}) async {
  final dio = ref.watch(dioProvider);
  final account = await ref.watch(accountStateProvider.future);

  return MisskeyClient(dio, baseUrl: baseUrl ?? account?.apiBaseUrl ?? '');
}
