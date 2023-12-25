import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_global_flag_provider.g.dart';

@riverpod
final class NoteForceSensitiveRemoved extends _$NoteForceSensitiveRemoved {
  @override
  bool build() {
    return false;
  }

  void toggle() {
    state = !state;
  }
}

@riverpod
final class NoteMediaOnlyVisible extends _$NoteMediaOnlyVisible {
  @override
  bool build() {
    return false;
  }

  void setMediaOnlyVisible(bool isMediaOnlyVisible) {
    state = isMediaOnlyVisible;
  }
}
