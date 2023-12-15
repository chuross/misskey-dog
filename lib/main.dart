import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_extension.dart';
import 'package:misskey_dog/core/router/app_router.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/model/account/account_provider.dart';

void main() {
  // 多言語化する際に消す
  Translations.missingKeyCallback = (_, __) {};

  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = AppRouter(ref);

    ref.listen(accountStateProvider, (prev, next) {
      // 認証状態が無くなったらログイン画面
      if (prev?.value != null && next.value == null) {
        appRouter.replaceAll([const LoginRoute()]);
      }
    });

    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
      routerConfig: appRouter.config(),
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
