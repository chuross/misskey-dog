import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';

part 'note_reaction.freezed.dart';

@freezed
abstract class NoteReaction with _$NoteReaction {
  const factory NoteReaction({
    required Emoji emoji,
    required int reactionCount,
  }) = _NoteReactionLocalEmoji;

  factory NoteReaction.resolved(
    String key, {
    Map<String, int> reactionCountMap = const {},
    Map<String, String> externalReactionUrlMap = const {},
  }) {
    return NoteReaction(
      emoji: Emoji.resolve(rawEmoji: key, url: externalReactionUrlMap[key]),
      reactionCount: reactionCountMap[key] ?? 0,
    );
  }
}
