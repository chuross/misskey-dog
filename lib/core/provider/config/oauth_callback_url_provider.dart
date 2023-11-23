import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oauth_callback_url_provider.g.dart';

@riverpod
String oauthCallbackUrl(OauthCallbackUrlRef ref) {
  return 'misskey_dog://auth/callback';
}
