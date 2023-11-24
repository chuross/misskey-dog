import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/bool.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/ui/error_view.dart';
import 'package:misskey_dog/model/account/account_state_provider.dart';

@RoutePage()
final class HomeScreen extends ConsumerWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountStateProvider);

    return account.when(
      error: (_, __) => ErrorView(onRetry: () {}),
      loading: () => const CircularProgressIndicator().align(Alignment.center),
      data: (account) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Misskey Dog'),
            actions: [
              IconButton(
                icon: (account?.user.avatarUrl != null).when(
                  tru: () => CircleAvatar(
                    foregroundImage: NetworkImage(account?.user.avatarUrl ?? ''),
                  ),
                  fals: () => const Icon(Icons.person),
                ),
                onPressed: () => context.router.push(const AccountRoute()),
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: 3,
            itemBuilder: (_, __) {
              return const Text('test');
            },
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
