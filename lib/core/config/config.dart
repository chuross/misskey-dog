import 'package:universal_platform/universal_platform.dart';

final class Config {
  static final oauthCallbackUrl =
      UniversalPlatform.isWeb ? '${Uri.base.origin}/${Uri.base.pathSegments.join('/')}#/auth/callback' : 'misskeydog://auth/callback';
}
