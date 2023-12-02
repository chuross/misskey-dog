// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/emoji/emoji.dart';
import 'package:misskey_dog/model/note/note_file.dart';
import 'package:misskey_dog/model/note/note_reaction.dart';
import 'package:misskey_dog/model/user/user.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
abstract class Note with _$Note {
  const Note._();
  const factory Note({
    required String id,
    required DateTime createdAt,
    required User user,
    Note? renote,
    required int repliesCount,
    required int renoteCount,
    @JsonKey(name: 'reactions') required Map<String, int> reactionCountMap,
    @JsonKey(name: 'reactionEmojis') required Map<String, String> externalReactionUrlMap,
    @JsonKey(name: 'myReaction') String? myRawReactionEmoji,
    String? text,
    required List<NoteFile> files,
  }) = _Note;

  List<NoteReaction> get reactions => reactionCountMap.keys.map((key) {
        return NoteReaction.resolved(key, reactionCountMap: reactionCountMap);
      }).toList();

  Emoji? get myReactionEmoji => myRawReactionEmoji != null ? Emoji.resolve(rawEmoji: myRawReactionEmoji!) : null;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
