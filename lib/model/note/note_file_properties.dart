import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_file_properties.freezed.dart';
part 'note_file_properties.g.dart';

@freezed
abstract class NoteFileProperties with _$NoteFileProperties {
  factory NoteFileProperties({
    double? width,
    double? height,
  }) = _NoteFileProperties;

  factory NoteFileProperties.fromJson(Map<String, dynamic> json) => _$NoteFilePropertiesFromJson(json);
}
