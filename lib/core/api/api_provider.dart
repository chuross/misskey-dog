import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/api/request/streaming_payload_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/core/extension/stream.dart';
import 'package:misskey_dog/model/account/account_provider.dart';
import 'package:misskey_dog/model/notification/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'api_provider.g.dart';

@riverpod
Future<Dio> dio(DioRef ref) async {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 3),
    receiveTimeout: const Duration(seconds: 6),
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

@riverpod
Raw<Stream<Notification>> misskeyStreaming(MisskeyStreamingRef ref, {required StreamingPayloadRequestChannel channel}) {
  return ref
      .watch(accountStateProvider.future)
      .asStream()
      .where((event) => event != null)
      .map((event) => event!)
      .map((event) {
        final webSocket = WebSocketChannel.connect(MisskeyClient.sreamingUri(host: event.host ?? '', token: event.token));
        ref.onDispose(() => webSocket.sink.close());

        webSocket.sink.add(jsonEncode(StreamingPayloadRequest(
          kind: StreamingPayloadRequestKind.connect,
          body: StreamingPayloadRequestBody(
            id: const Uuid().v4(),
            channel: channel,
          ),
        ).toJson().removeAllNullValueKeys()));

        return webSocket.stream;
      })
      .flatten()
      .map((event) => jsonDecode(event))
      .map((event) => Notification.fromJson(event));
}
