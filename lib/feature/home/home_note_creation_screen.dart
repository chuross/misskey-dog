import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/core/ui/ui_provider.dart';
import 'package:misskey_dog/model/note/note_provider.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
final class HomeNoteCreationScreen extends ConsumerWidget {
  final String _instanceUuid = const Uuid().v4().toString();

  HomeNoteCreationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textProvider = TextStateProvider(instanceUuid: _instanceUuid);
    final textState = ref.watch(textProvider);
    final createNote = ref.watch(noteProvider().create);

    if (createNote is CreateMutationSuccess) {
      context.popRoute();
    }

    return Scaffold(
      appBar: AppBar(
        title: const SizedBox.shrink(),
        actions: [
          FilledButton(
            onPressed: (textState.isNotEmpty || createNote is MutationLoading).mapOrElse(
              func: (_) => () => createNote(text: textState),
              elseValue: null,
            ),
            child: Text('投稿'.i18n),
          ).padding(const EdgeInsets.only(right: 16)),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 28),
          TextField(
            style: context.textTheme.bodyMedium,
            decoration: InputDecoration(
              hintText: 'いまどうしてる?'.i18n,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
            ),
            maxLines: null,
            onChanged: (text) => ref.read(textProvider.notifier).setText(text),
          )
        ],
      ).padding(const EdgeInsets.all(16)),
    );
  }
}
