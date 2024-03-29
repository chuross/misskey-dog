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
    String? text,
    String? cw,
    required List<NoteFile> files,
    @JsonKey(name: 'emojis', defaultValue: {}) required Map<String, String> externalTextEmojiUrlMap,
    @JsonKey(name: 'reactions') required Map<String, int> reactionCountMap,
    @JsonKey(name: 'reactionEmojis', defaultValue: {}) required Map<String, String> externalReactionEmojiUrlMap,
    @JsonKey(name: 'myReaction') String? myRawReactionEmoji,
    required int repliesCount,
    required int renoteCount,
  }) = _Note;

  bool get isLocal => user.isLocal;

  List<NoteReaction> get reactions => reactionCountMap.keys.map((key) {
        return NoteReaction.resolved(
          key,
          reactionCountMap: reactionCountMap,
          externalReactionEmojiUrlMap: externalReactionEmojiUrlMap,
        );
      }).toList();

  Emoji? get myReactionEmoji => myRawReactionEmoji != null ? Emoji.resolve(rawEmoji: myRawReactionEmoji!) : null;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
