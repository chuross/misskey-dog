import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/get_user_request/get_user_request.dart';
import 'package:misskey_dog/model/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@riverpod
Future<User> user(UserRef ref, {required String id}) async {
  final client = await ref.watch(misskeyClientProvider().future);
  return client.getUser(GetUserRequest(userId: id));
}
