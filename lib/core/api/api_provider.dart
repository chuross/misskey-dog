import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/model/account/account_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_provider.g.dart';

@riverpod
Future<Dio> dio(DioRef ref) async {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 3),
    receiveTimeout: const Duration(seconds: 3),
    sendTimeout: const Duration(seconds: 10),
  ));

  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final account = await ref.read(accountStateProvider.future);
      if (account != null && options.data is Map) {
        options.data['i'] = account.token;
      }

      return handler.next(options);
    },
  ));

  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(
      request: false,
      requestHeader: false,
      requestBody: true,
      responseHeader: false,
      responseBody: true,
    ));
  }

  return dio;
}

@riverpod
Future<MisskeyClient> misskeyClient(MisskeyClientRef ref, {String? baseUrl}) async {
  final dio = await ref.watch(dioProvider.future);
  final account = await ref.watch(accountStateProvider.future);

  return MisskeyClient(dio, baseUrl: baseUrl ?? account?.apiBaseUrl ?? '');
}
