import 'package:dio/dio.dart';
import 'package:misskey_dog/core/api/combined_response/create_note_response.dart';
import 'package:misskey_dog/core/api/combined_response/get_emojis_response.dart';
import 'package:misskey_dog/core/api/request/create_mute_user_request/create_mute_user_request.dart';
import 'package:misskey_dog/core/api/request/create_note_reaction_request/create_note_reaction_request.dart';
import 'package:misskey_dog/core/api/request/create_note_request/create_note_request.dart';
import 'package:misskey_dog/core/api/request/create_user_following_request/create_user_following_request.dart';
import 'package:misskey_dog/core/api/request/get_emoji_request/get_emoji_request.dart';
import 'package:misskey_dog/core/api/request/get_global_notes_request/get_global_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_hash_tag_notes_request/get_hash_tag_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_home_notes_request/get_home_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_local_notes_request/get_local_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_note_request/get_note_request.dart';
import 'package:misskey_dog/core/api/request/get_notes_request/get_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_notifications_request/get_notifications_request.dart';
import 'package:misskey_dog/core/api/request/get_user_notes_request/get_user_notes_request.dart';
import 'package:misskey_dog/core/api/request/get_user_request/get_user_request.dart';
import 'package:misskey_dog/core/api/request/remove_user_following_request/remove_user_following_request.dart';
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
  Future<User> getUser(@Body() GetUserRequest request);

  @POST('/api/following/create')
  Future<void> createUserFollowing(@Body() CreateUserFollowingRequest request);

  @POST('/api/following/delete')
  Future<void> removeUserFollowing(@Body() RemoveUserFollowingRequest request);

  @POST('/api/notes/show')
  Future<Note> getNote(@Body() GetNoteRequest request);

  @POST('/api/notes/search')
  Future<List<Note>> getNotes(@Body() GetNotesRequest request);

  @POST('/api/users/notes')
  Future<List<Note>> getUserNotes(@Body() GetUserNotesRequest request);

  @POST('/api/notes/search-by-tag')
  Future<List<Note>> getHashTagNotes(@Body() GetHashTagNotesRequest request);

  @POST('/api/notes/timeline')
  Future<List<Note>> getHomeNotes(@Body() GetHomeNotesRequest request);

  @POST('/api/notes/local-timeline')
  Future<List<Note>> getLocalNotes(@Body() GetLocalNotesRequest request);

  @POST('/api/notes/global-timeline')
  Future<List<Note>> getGlobalNotes(@Body() GetGlobalNotesRequest request);

  @POST('/api/notes/create')
  Future<CreateNoteResponse> createNote(@Body() CreateNoteRequest request);

  @POST('/api/notes/reactions/create')
  Future<void> createNoteReaction(@Body() CreateNoteReactionRequest request);

  @POST('/api/emojis')
  Future<GetEmojisResponse> getLocalEmojis({@Body() Map<String, dynamic> request = const {}});

  @POST('/api/emoji')
  Future<LocalEmoji> getLocalEmoji(@Body() GetEmojiRequest request);

  @POST('/api/i/notifications')
  Future<List<Notification>> getNotifications(@Body() GetNotificationsRequest request);

  @POST('/api/mute/create')
  Future<void> createMuteUser(@Body() CreateMuteUserRequest request);
}
