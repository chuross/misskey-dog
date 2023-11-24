import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/config/config.dart';
import 'package:misskey_dog/core/ui/text_state_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget implements AutoRouteWrapper {
  final String _instanceUuid = const Uuid().v4();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hostTextState = ref.watch(textStateProvider(instanceUuid: _instanceUuid));

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
            onChanged: (text) {
              ref.watch(textStateProvider(instanceUuid: _instanceUuid).notifier).setText(text);
            },
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: hostTextState.isNotEmpty
                ? () {
                    _launchOAuthUrl(
                      host: hostTextState,
                      oauthCallbackUrl: Config.oauthCallbackUrl,
                    );
                  }
                : null,
            child: Text('ログイン'.i18n),
          ).expandWidth(),
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
