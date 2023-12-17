import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/view/screen_loading_view.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

@RoutePage()
final class LoginCallbackScreen extends ConsumerWidget {
  final String host;
  final String session;

  const LoginCallbackScreen({
    super.key,
    @QueryParam() this.host = '',
    @QueryParam() this.session = '',
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final log = ref.watch(logProvider);
    final authentication = ref.watch(accountAuthorizationProvider(host: host, session: session));

    log.d("@@@authorize: host=$host, session=$session");

    ref.listen(accountStateProvider, (_, next) {
      if (next.value != null) {
        context.replaceRoute(const HomeRoute());
      }
    });

    switch (authentication) {
      case AsyncData(value: final _):
        return const SizedBox.shrink();
      default:
        return ScreenLoadingView(
            value: authentication,
            onRetry: () {
              ref.invalidate(accountAuthorizationProvider(host: host, session: session));
            });
    }
  }
}
