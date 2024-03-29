import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/config/config.dart';
import 'package:url_launcher/url_launcher.dart';

part 'login_screen.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
final class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hostText = useState('');

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Misskey Dog',
            style: context.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'ゆるっと楽しむMisskeyクライアント'.i18n,
            style: context.textTheme.bodyMedium,
          ),
          const SizedBox(height: 64),
          TextField(
            autofocus: true,
            keyboardType: TextInputType.url,
            decoration: InputDecoration(
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
              hintText: 'sushi.ski, misskey.ioなど'.i18n,
              prefix: const Text('https://'),
            ),
            onChanged: (text) => hostText.value = text,
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: hostText.value.isNotEmpty
                ? () {
                    _launchOAuthUrl(
                      host: hostText.value,
                      oauthCallbackUrl: Config.oauthCallbackUrl,
                    );
                  }
                : null,
            child: Text('ログイン'.i18n),
          ),
        ],
      ).align(Alignment.center).padding(const EdgeInsets.all(32)),
    );
  }

  void _launchOAuthUrl({
    required String host,
    required String oauthCallbackUrl,
  }) async {
    final oauthUri = MisskeyClient.oauthUri(
      host: host,
      baseCallbackUrl: oauthCallbackUrl,
    );

    await launchUrl(oauthUri, mode: LaunchMode.externalApplication, webOnlyWindowName: '_self');
  }
}
