import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _NoteFile;

  bool get isImage => type.startsWith('image/');
  bool get isVideo => type.startsWith('video/');

  factory NoteFile.fromJson(Map<String, dynamic> json) => _$NoteFileFromJson(json);
}
