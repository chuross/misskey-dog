import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/bool.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/core/ui/error_view.dart';
import 'package:misskey_dog/core/ui/loading_view.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/account/account_provider.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

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
        return DefaultTabController(
          length: 1,
          child: Scaffold(
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
              bottom: TabBar(tabs: [
                Tab(text: 'ローカル'.i18n),
              ]),
            ),
            body: TabBarView(
              children: [
                _noteList(ref, isLocal: true),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _noteList(
    WidgetRef ref, {
    bool isLocal = false,
  }) {
    final provider = notesProvider(isLocal: isLocal);
    final notes = ref.watch(provider);

    return notes.when(
      error: (_, __) => ErrorView(onRetry: () => ref.invalidate(provider)),
      loading: () => const LoadingView(),
      data: (notes) {
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes[index];
            return NoteItem(note: note);
          },
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}
