import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

part 'note_reaction.freezed.dart';

@freezed
abstract class NoteReaction with _$NoteReaction {
  const factory NoteReaction({
    required Emoji emoji,
    required int reactionCount,
  }) = _NoteReactionLocalEmoji;

  // localEmoji => :ohayougozaimasu@.:
  // PlainEmoji => 😀:@.:
  factory NoteReaction.resolved(String key, Map<String, int> rawReactions) {
    final emojiName = key.split('@').first;

    if (emojiName.startsWith(':')) {
      return NoteReaction(
        emoji: LocalEmoji(name: emojiName.substring(1)),
        reactionCount: rawReactions[key] ?? 0,
      );
    } else {
      return NoteReaction(
        emoji: PlainEmoji(text: emojiName),
        reactionCount: rawReactions[key] ?? 0,
      );
    }
  }
}
