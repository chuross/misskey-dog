import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_user_following_request/create_user_following_request.dart';
import 'package:misskey_dog/core/api/request/remove_user_following_request/remove_user_following_request.dart';

(bool isFollowing, void Function() toggle) useUserFollowing({
  required WidgetRef ref,
  required String userId,
  required bool defaultFollowing,
}) {
  final isFollowing = useState(defaultFollowing);

  void toggle() async {
    final client = await ref.read(misskeyClientProvider().future);

    if (isFollowing.value) {
      await client.removeUserFollowing(RemoveUserFollowingRequest(userId: userId).toJson());
    } else {
      await client.createUserFollowing(CreateUserFollowingRequest(userId: userId).toJson());
    }

    isFollowing.value = !isFollowing.value;
  }

  return (isFollowing.value, toggle);
}
