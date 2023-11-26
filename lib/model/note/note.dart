// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/user/user.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
abstract class Note with _$Note {
  const Note._();
  const factory Note({
    required String id,
    required User user,
    Note? renote,
    required int repliesCount,
    required int renoteCount,
    @JsonKey(name: 'reactions') required Map<String, int> rawReactions,
    String? text,
  }) = _Note;

  List<NoteReaction> get reactions => rawReactions.keys.map((key) => NoteReaction.resolved(key, rawReactions)).toList();

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

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
