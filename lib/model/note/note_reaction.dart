import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

part 'note_reaction.freezed.dart';

@freezed
abstract class NoteReaction with _$NoteReaction {
  const factory NoteReaction({
    required Emoji emoji,
    required int reactionCount,
  }) = _NoteReactionLocalEmoji;

  // key: ex) :dame@submarin.online:
  // externalReactionUrlMap: ex) {dame@submarin.online: https://submarin.online/files/webpublic-5940b269-071e-4991-b937-a02302fec7a9}
  factory NoteReaction.resolved(
    String key, {
    Map<String, int> reactionCountMap = const {},
    Map<String, String> externalReactionUrlMap = const {},
  }) {
    final emojiName = key.substring(1, key.length - 1);

    return NoteReaction(
      emoji: Emoji.resolve(rawEmoji: key, url: externalReactionUrlMap[emojiName]),
      reactionCount: reactionCountMap[key] ?? 0,
    );
  }
}
