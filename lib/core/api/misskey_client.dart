import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uuid/uuid.dart';

part 'misskey_client.g.dart';

@RestApi()
abstract class MisskeyClient {
  factory MisskeyClient(Dio dio, {String baseUrl}) = _MisskeyClient;

  static Uri oauthUri({required String host, required String baseCallbackUrl}) {
    final session = const Uuid().v4();

    return Uri.parse("https://$host/miauth/$session").replace(queryParameters: {
      'callback': Uri.parse(baseCallbackUrl).replace(queryParameters: {
        'session': session,
      }),
    });
  }
}
