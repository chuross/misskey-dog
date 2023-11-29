import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_emoji_request.dart';
import 'package:misskey_dog/core/extension/map.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'emoji_provider.g.dart';

@riverpod
Future<CustomEmoji> localEmoji(LocalEmojiRef ref, {required String emojiName}) async {
  ref.keepAlive();

  final client = await ref.watch(misskeyClientProvider().future);
  return await client.getLocalEmoji(request: GetEmojiRequest(name: emojiName).toJson().removeAllNullValueKeys());
}
