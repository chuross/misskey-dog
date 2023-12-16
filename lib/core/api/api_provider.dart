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
Dio dio(DioRef ref) {
  final dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    sendTimeout: const Duration(seconds: 180),
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
      responseBody: false,
    ));
  }

  return dio;
}

@riverpod
Future<MisskeyClient> misskeyClient(MisskeyClientRef ref, {String? baseUrl}) async {
  final dio = ref.watch(dioProvider);
  final account = await ref.watch(accountStateProvider.future);

  return MisskeyClient(dio, baseUrl: baseUrl ?? account?.apiBaseUrl ?? '');
}

@riverpod
Future<(WebSocketChannel, Stream<dynamic>)> _misskeyStreamingConnection(_MisskeyStreamingConnectionRef ref) async {
  final log = ref.watch(logProvider);
  final account = await ref.watch(accountStateProvider.future);
  if (account == null) throw StateError('account is null');

  final streamingUrl = MisskeyClient.sreamingUri(host: account.host ?? '', token: account.token);

  log.d('@@@streaming:connect:start:url=$streamingUrl');
  final webSocket = WebSocketChannel.connect(streamingUrl);

  ref.onDispose(() {
    webSocket.sink.close();
  });

  try {
    await webSocket.ready;
    log.d('@@@streaming:connect:ready');
  } catch (e) {
    log.e('@@@streaming:connect:error:error=$e');
    rethrow;
  }

  return (webSocket, webSocket.stream.asBroadcastStream());
}

@riverpod
Stream<(WebSocketChannel, Stream<dynamic>)> misskeyStreaming(MisskeyStreamingRef ref) {
  final log = ref.watch(logProvider);

  return ref.watch(_misskeyStreamingConnectionProvider.future).asStream().map((connection) {
    final (_, stream) = connection;

    final subscriber = stream.listen(null, onDone: () {
      log.d('@@@streaming:connect:retry');
      ref.invalidate(_misskeyStreamingConnectionProvider);
    });

    ref.onDispose(() {
      subscriber.cancel();
    });

    return connection;
  });
}

@riverpod
Stream<dynamic> misskeyChannelStreaming(MisskeyChannelStreamingRef ref, {required StreamingChannel channel}) {
  final log = ref.watch(logProvider);
  final streamingId = const Uuid().v4();

  return ref
      .watch(misskeyStreamingProvider.future)
      .asStream()
      .map((connection) {
        log.d('@@@streaming:channel:connect:channel=${channel.rawValue}, id=$streamingId');

        final (webSocketChannel, stream) = connection;

        webSocketChannel.sink.add(jsonEncode({
          'type': 'connect',
          'body': {
            'id': streamingId,
            'channel': channel.rawValue,
          },
        }));

        ref.onDispose(() {
          log.d('@@@streaming:channel:disconnect:id=$streamingId');

          webSocketChannel.sink.add(jsonEncode({
            'type': 'disconnect',
            'body': {
              'id': streamingId,
            },
          }));
        });

        return stream;
      })
      .flatten()
      .map((event) => jsonDecode(event))
      .where((event) => event['body']['id'] == streamingId)
      .map((event) => event['body']);
}
