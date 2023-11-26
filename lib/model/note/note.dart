// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';
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
