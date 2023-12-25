import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'note_force_sensitive_provider.g.dart';

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
