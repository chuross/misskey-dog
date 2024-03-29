import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

part 'note_reaction.freezed.dart';

@freezed
abstract class NoteReaction with _$NoteReaction {
  const NoteReaction._();

  const factory NoteReaction({
    required Emoji emoji,
    required int reactionCount,
  }) = _NoteReactionLocalEmoji;

  bool get isReactionable => emoji is LocalEmoji || emoji is PlainEmoji;

  // key: ex) :dame@submarin.online:
  // externalReactionUrlMap: ex) {dame@submarin.online: https://submarin.online/files/webpublic-5940b269-071e-4991-b937-a02302fec7a9}
  factory NoteReaction.resolved(
    String key, {
    Map<String, int> reactionCountMap = const {},
    Map<String, String> externalReactionEmojiUrlMap = const {},
  }) {
    final emojiName = key.takeIf((p) => p.length > 1)?.substring(1, key.length - 1) ?? '';

    return NoteReaction(
      emoji: Emoji.resolve(rawEmoji: key, url: externalReactionEmojiUrlMap[emojiName]),
      reactionCount: reactionCountMap[key] ?? 0,
    );
  }
}
