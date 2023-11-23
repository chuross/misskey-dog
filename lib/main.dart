import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:misskey_dog/core/router/app_router.dart';

void main() {
  runApp(ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MainApp({super.key});

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
      routerConfig: _appRouter.config(),
    );
  }
}
