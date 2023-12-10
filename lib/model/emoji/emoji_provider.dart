import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'emoji_provider.g.dart';

@riverpod
Future<List<LocalEmoji>> localEmojis(LocalEmojisRef ref) async {
  final client = await ref.watch(misskeyClientProvider().future);
  final emojis = (await client.getLocalEmojis()).emojis;
  ref.keepAlive();
  return emojis;
}

@riverpod
Future<Map<String, LocalEmoji>> _localEmojiMap(_LocalEmojiMapRef ref) async {
  final emojis = await ref.watch(localEmojisProvider.future);
  final emojiMap = Map.fromEntries(emojis.map((e) => MapEntry(e.name, e)));
  ref.keepAlive();
  return emojiMap;
}

@riverpod
Future<LocalEmoji> localEmoji(LocalEmojiRef ref, {required String emojiName}) async {
  final emojiMap = await ref.watch(_localEmojiMapProvider.future);
  return emojiMap[emojiName]!;
}
