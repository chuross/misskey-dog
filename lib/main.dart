import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/router/app_router.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/model/account/account_state_provider.dart';

void main() {
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
        appRouter.replaceAll([LoginRoute()]);
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
    );
  }
}
