import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/user/user.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
abstract class Note with _$Note {
  const factory Note({
    required String id,
    required User user,
    Note? renote,
    required int repliesCount,
    required int renoteCount,
    required Map<String, int> reactions,
    String? text,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
abstract class NoteReaction with _$NoteReaction {
  const factory NoteReaction({
    required String name,
  }) = _NoteReaction;

  // key: 例) :ablobhype@.:
  factory NoteReaction.resolved(String key) {
    final name = key.split('@').first.substring(1);
    return NoteReaction(name: name);
  }

  factory NoteReaction.fromJson(Map<String, dynamic> json) => _$NoteReactionFromJson(json);
}
