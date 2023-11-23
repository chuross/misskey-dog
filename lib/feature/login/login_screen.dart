import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/api/misskey_client.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/provider/config/oauth_callback_url_provider.dart';
import 'package:misskey_dog/core/provider/ui/text_editing_controller_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class LoginScreen extends ConsumerWidget implements AutoRouteWrapper {
  final String _instanceUuid = const Uuid().v4();

  LoginScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = ref.watch(unsafeTextEditingControllerProvider(uuid: _instanceUuid));
    final oauthCallbackUrl = ref.watch(oauthCallbackUrlProvider);

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
            controller: textEditingController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: 'Misskey host'.i18n,
              hintText: 'sushi.ski, misskey.ioなど'.i18n,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              _launchOAuthUrl(
                textEditingController: textEditingController,
                oauthCallbackUrl: oauthCallbackUrl,
              );
            },
            child: Text('ログイン'.i18n),
          ).expandWidth(),
        ],
      ).align(Alignment.center).padding(const EdgeInsets.all(64)),
    );
  }

  void _launchOAuthUrl({
    required TextEditingController textEditingController,
    required String oauthCallbackUrl,
  }) async {
    final oauthUri = MisskeyClient.oauthUri(
      host: textEditingController.text,
      baseCallbackUrl: oauthCallbackUrl,
    );

    await launchUrl(oauthUri);
  }
}
