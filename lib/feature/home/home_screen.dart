import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

@RoutePage()
final class HomeScreen extends ConsumerWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Misskey Dog'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () => context.router.push(const AccountRoute()),
          ),
        ],
      ),
      body: const CustomScrollView(
        slivers: [],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
