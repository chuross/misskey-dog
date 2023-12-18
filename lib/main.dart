import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:misskey_dog/core/router/app_router.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

final _router = GoRouter(
  routes: $appRoutes,
  redirect: (context, state) async {
    final account = await ProviderScope.containerOf(context).read(accountStateProvider.future);

    switch (account) {
      case final _?:
        return null;
      case null
          when [
            LoginRoute().location,
            LoginCallbackRoute().location,
          ].contains(state.matchedLocation):
        return null;
      default:
        return LoginRoute().location;
    }
  },
);

void main() {
  // 多言語化する際に消す
  Translations.missingKeyCallback = (_, __) {};

  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
      routerConfig: _router,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
