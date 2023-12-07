import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/extension/stream.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/model/account/account_provider.dart';
import 'package:misskey_dog/model/streaming/streaming_channel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
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
Future<WebSocketChannel> _misskeyStreaming(_MisskeyStreamingRef ref) async {
  final log = ref.watch(logProvider);
  final account = await ref.watch(accountStateProvider.future);
  if (account == null) throw StateError('account is null');

  final streamingUrl = MisskeyClient.sreamingUri(host: account.host ?? '', token: account.token);

  log.d('@@@streaming:connect:start:url=$streamingUrl');
  final webSocket = WebSocketChannel.connect(streamingUrl);
  ref.onDispose(() {
    log.d('@@@streaming:close');
    webSocket.sink.close();
  });

  await webSocket.ready;
  log.d('@@@streaming:connect:completed');

  return webSocket;
}

@riverpod
Raw<Stream<dynamic>> misskeyChannelStreaming(MisskeyChannelStreamingRef ref, {required StreamingChannel channel}) {
  final streamingId = const Uuid().v4();

  return ref
      .watch(_misskeyStreamingProvider.future)
      .asStream()
      .map((webSocketChannel) {
        webSocketChannel.sink.add(jsonEncode({
          'type': 'connect',
          'body': {
            'id': streamingId,
            'channel': channel.rawValue,
          },
        }));

        ref.onDispose(() {
          webSocketChannel.sink.add(jsonEncode({
            'type': 'disconnect',
            'body': {
              'id': streamingId,
            },
          }));
        });

        return webSocketChannel.stream;
      })
      .flatten()
      .where((event) => event['body']['id'] == streamingId)
      .map((event) => event['body']);
}
