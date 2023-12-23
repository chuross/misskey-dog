import 'package:dio/dio.dart';
import 'package:misskey_dog/core/api/combined_response/create_note_response.dart';
import 'package:misskey_dog/core/api/combined_response/get_emojis_response.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note.dart';
import 'package:misskey_dog/model/notification/notification.dart';
import 'package:misskey_dog/model/user/user.dart';
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
      'callback': Uri.encodeFull('$baseCallbackUrl?host=$host&session=$session'),
      'permission': [
        'read:account',
        'write:notes',
        'write:reactions',
        'read:notifications',
        'write:notifications',
        'write:mutes',
        'write:following',
      ].join(','),
    });
  }

  static Uri sreamingUri({required String host, required String token}) {
    return Uri.parse('wss://$host/streaming?i=$token');
  }

  @POST('/api/miauth/{session}/check')
  Future<Account> authorize(@Path('session') String session);

  @POST('/api/users/show')
  Future<User> getUser({@Body() required Map<String, dynamic> request});

  @POST('/api/following/create')
  Future<void> createUserFollowing(@Body() Map<String, dynamic> request);

  @POST('/api/following/delete')
  Future<void> removeUserFollowing(@Body() Map<String, dynamic> request);

  @POST('/api/notes/show')
  Future<Note> getNote({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/search')
  Future<List<Note>> getNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/users/notes')
  Future<List<Note>> getUserNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/search-by-tag')
  Future<List<Note>> getHashTagNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/timeline')
  Future<List<Note>> getHomeNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/local-timeline')
  Future<List<Note>> getLocalNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/global-timeline')
  Future<List<Note>> getGlobalNotes({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/create')
  Future<CreateNoteResponse> createNote({@Body() required Map<String, dynamic> request});

  @POST('/api/notes/reactions/create')
  Future<void> createNoteReaction({@Body() required Map<String, dynamic> request});

  @POST('/api/emojis')
  Future<GetEmojisResponse> getLocalEmojis({@Body() Map<String, dynamic> request = const {}});

  @POST('/api/emoji')
  Future<LocalEmoji> getLocalEmoji({@Body() required Map<String, dynamic> request});

  @POST('/api/i/notifications')
  Future<List<Notification>> getNotifications(@Body() Map<String, dynamic> request);

  @POST('/api/mute/create')
  Future<void> createMuteUser(@Body() Map<String, dynamic> request);
}
