import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:misskey_dog/model/note/note_file_properties.dart';

part 'note_file.freezed.dart';
part 'note_file.g.dart';

@freezed
abstract class NoteFile with _$NoteFile {
  const NoteFile._();

  const factory NoteFile({
    required String id,
    required String type,
    required String url,
    required String? thumbnailUrl,
    required bool isSensitive,
    required NoteFileProperties? properties,
  }) = _NoteFile;

  bool get isImage => type.startsWith('image/');
  bool get isVideo => type.startsWith('video/');

  factory NoteFile.fromJson(Map<String, dynamic> json) => _$NoteFileFromJson(json);
}
