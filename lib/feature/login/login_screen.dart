import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/config/config.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget implements AutoRouteWrapper {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hostTextState = useState('');

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
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Misskey host'.i18n,
              hintText: 'sushi.ski, misskey.ioなど'.i18n,
            ),
            onChanged: (text) => hostTextState.value = text,
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: hostTextState.value.isNotEmpty
                ? () {
                    _launchOAuthUrl(
                      host: hostTextState.value,
                      oauthCallbackUrl: Config.oauthCallbackUrl,
                    );
                  }
                : null,
            child: Text('ログイン'.i18n),
          ),
        ],
      ).align(Alignment.center).padding(const EdgeInsets.all(64)),
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

    await launchUrl(oauthUri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
