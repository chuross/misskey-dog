import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/api/api_provider.dart';
import 'package:misskey_dog/core/api/request/create_note_request.dart';
import 'package:misskey_dog/core/extension/build_context.dart';
import 'package:misskey_dog/core/extension/dynamic.dart';
import 'package:misskey_dog/core/extension/widget.dart';

(AsyncValue<bool>, Function(String)) useNoteCreation(WidgetRef ref) {
  final result = useState<AsyncValue<bool>>(const AsyncLoading<bool>());

  func(String text) async {
    final client = await ref.read(misskeyClientProvider().future);
    await client.createNote(request: CreateNoteRequest(text: text).toJson());

    result.value = const AsyncData(true);
  }

  return (result.value, func);
}

final class HomeNoteCreationScreen extends HookConsumerWidget {
  const HomeNoteCreationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final text = useState('');
    final (creationResult, createNote) = useNoteCreation(ref);

    if (creationResult.value == true) {
      context.popRoute();
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          style: context.textTheme.bodyMedium,
          decoration: InputDecoration(
            hintText: 'いまどうしてる?'.i18n,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
          ),
          maxLines: null,
          onChanged: (newText) => text.value = newText,
        ),
        const SizedBox(height: 32),
        FilledButton(
          onPressed: (text.value.isNotEmpty).mapOrElse(
            func: (_) => () => createNote(text.value),
            elseValue: null,
          ),
          child: Text('投稿'.i18n),
        ).padding(const EdgeInsets.symmetric(horizontal: 64)),
      ],
    ).padding(const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 48));
  }
}
