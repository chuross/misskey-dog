import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_completion_provider.g.dart';

@riverpod
Future<bool> authCompletion(AuthCompletionRef ref, {required String session}) async {
  return true;
}
