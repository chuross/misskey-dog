import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:misskey_dog/core/extension/async_value.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';
import 'package:misskey_dog/feature/home/home_note_creation_screen.dart';
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
                        elseValue: const Icon(Icons.person),
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
                floatingActionButton: Builder(builder: (context) {
                  return FloatingActionButton(
                    child: const Icon(Icons.edit),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        isScrollControlled: true,
                        builder: (_) {
                          return const HomeNoteCreationScreen().padding(
                            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          );
                        },
                      );
                    },
                  );
                }),
              ));
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
    final provider = noteIdsProvider(isLocal: isLocal);
    final noteIds = ref.watch(provider);

    return noteIds.whenScreenLoading(
      ref: ref,
      onRetry: () => ref.invalidate(provider),
      data: (notesIds) {
        return RefreshIndicator(
          onRefresh: () async => ref.invalidate(provider),
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 80),
            itemCount: notesIds.length,
            itemBuilder: (context, index) {
              final note = ref.watch(cachedNoteProvider(id: notesIds[index]));
              if (note == null) return const SizedBox.shrink();

              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: Divider.createBorderSide(context, color: context.dividerColorWithOpacity30),
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
