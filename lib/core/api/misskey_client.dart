import 'package:dio/dio.dart';
import 'package:misskey_dog/core/api/combined_response/create_note_response.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
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

  @POST('/api/notes')
  Future<List<Note>> getNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/create')
  Future<CreateNoteResponse> createNote({@Body() required Map<String, dynamic> request});

  @POST('/api/emoji')
  Future<LocalEmoji> getLocalEmoji({@Body() required Map<String, dynamic> request});
}
