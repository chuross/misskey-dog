import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

part 'note_reaction.freezed.dart';

@freezed
abstract class NoteReaction with _$NoteReaction {
  const factory NoteReaction({
    required Emoji emoji,
    required int reactionCount,
  }) = _NoteReactionLocalEmoji;

  // key:
  // localEmoji => :ohayougozaimasu@.:
  // PlainEmoji => 😀:@.:
  factory NoteReaction.resolved(String key, Map<String, int> rawReactions) {
    return NoteReaction(
      emoji: Emoji.resolve(rawEmojiWithHost: key),
      reactionCount: rawReactions[key] ?? 0,
    );
  }
}
