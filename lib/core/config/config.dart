import 'package:flutter/foundation.dart';

final class Config {
  static final oauthCallbackUrl =
      kIsWeb ? '${Uri.base.origin}/${Uri.base.pathSegments.join('/')}#/auth_callback' : 'misskeydog://auth/auth_callback';
}
