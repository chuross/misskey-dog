import 'package:dio/dio.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uuid/uuid.dart';

part 'misskey_client.g.dart';

@RestApi()
abstract class MisskeyClient {
  factory MisskeyClient(Dio dio, {String baseUrl}) = _MisskeyClient;

  static Uri oauthUri({required String host, required String baseCallbackUrl}) {
    final session = const Uuid().v4();

    return Uri.parse("https://$host/miauth/$session").replace(queryParameters: {
      'name': 'Misskey Dog',
      'callback': Uri.parse(baseCallbackUrl).replace(queryParameters: {
        'host': host,
        'session': session,
      }).toString(),
    });
  }

  @POST('/api/miauth/{session}/check')
  Future<Account> authorize(@Path('session') String session);

  @GET('/api/notes')
  Future<List<Note>> notes({
    @Query('sinceId') String? sinceId,
    @Query('local') bool isLocal = false,
    @Query('limit') int limit = 20,
  });
}
