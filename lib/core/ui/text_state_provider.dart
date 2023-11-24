import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_state_provider.g.dart';

@riverpod
final class TextState extends _$TextState {
  @override
  String build({required String instanceUuid}) {
    return '';
  }

  void setText(String text) {
    state = text;
  }
}
