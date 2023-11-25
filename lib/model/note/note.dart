// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
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

  List<NoteReaction> get reactions =>
      rawReactions.keys.where((element) => element.startsWith(':')).map((key) => NoteReaction.resolved(key, rawReactions)).toList();

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

sealed class NoteReaction {
  String get id;
  int get reactionCount;

  // key: 例) :ablobhype@.: | :tobuzo@misskey.io:
  factory NoteReaction.resolved(String key, Map<String, int> rawReactions) {
    final splitted = key.split('@');
    if (splitted[0].startsWith(':')) {
      // ローカルカスタム絵文字
      final name = splitted[0].substring(1);
      return NoteReactionLocalEmoji(
        id: name,
        reactionCount: rawReactions[key] ?? 0,
        emojiName: name,
      );
    } else {
      // 標準絵文字
      return NoteReactionPlainEmoji(
        id: key,
        reactionCount: rawReactions[key] ?? 0,
        emojiText: splitted[0],
      );
    }
  }
}

final class NoteReactionLocalEmoji implements NoteReaction {
  @override
  final String id;
  @override
  final int reactionCount;
  final String emojiName;

  NoteReactionLocalEmoji({required this.id, required this.reactionCount, required this.emojiName});
}

final class NoteReactionPlainEmoji implements NoteReaction {
  @override
  final String id;
  @override
  final int reactionCount;
  final String emojiText;

  NoteReactionPlainEmoji({required this.id, required this.reactionCount, required this.emojiText});
}
