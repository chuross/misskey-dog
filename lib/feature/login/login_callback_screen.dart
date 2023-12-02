import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/logger/logger_provider.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/view/error_view.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

@RoutePage()
final class LoginCallbackScreen extends ConsumerWidget implements AutoRouteWrapper {
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

    return Scaffold(
      body: authentication.when(
        data: (_) => const SizedBox.shrink(),
        error: (error, stackTrace) => ErrorView(onRetry: () {
          log.e('@@@authorize failed', error: error, stackTrace: stackTrace);

          // ignore: unused_result
          ref.refresh(accountAuthorizationProvider(host: host, session: session));
        }),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
