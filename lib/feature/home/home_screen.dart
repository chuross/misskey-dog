import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/feature/note/share/note_item.dart';
import 'package:misskey_dog/model/account/account_provider.dart';
import 'package:misskey_dog/model/note/note_provider.dart';

@RoutePage()
final class HomeScreen extends ConsumerWidget implements AutoRouteWrapper {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(accountStateProvider);

    return account.whenScreenLoading(
        ref: ref,
        onRetry: () => ref.invalidate(accountStateProvider),
        data: (account) {
          return DefaultTabController(
            length: 1,
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Misskey Dog'),
                actions: [
                  IconButton(
                    icon: account.mapOrElse(
                      func: (account) => CircleAvatar(
                        foregroundImage: NetworkImage(account.user.avatarUrl ?? ''),
                      ),
                      elseFunc: () => const Icon(Icons.person),
                    ),
                    onPressed: () => context.router.push(const AccountRoute()),
                  ),
                ],
                bottom: TabBar(tabs: [
                  Tab(text: 'ローカル'.i18n),
                ]),
              ),
              body: const TabBarView(
                children: [
                  _NoteList(isLocal: true),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return I18n(child: this);
  }
}

final class _NoteList extends ConsumerWidget {
  final bool isLocal;

  const _NoteList({required this.isLocal});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = notesProvider(isLocal: isLocal);
    final notes = ref.watch(provider);

    return notes.whenScreenLoading(
      ref: ref,
      onRetry: () => ref.invalidate(provider),
      data: (notes) {
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(provider),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final note = notes[index];
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context, color: context.dividerColor.withOpacity(0.2)),
                  ),
                ),
                child: NoteItem(key: ValueKey(note.id), note: note),
              );
            },
          ),
        );
      },
    );
  }
}
