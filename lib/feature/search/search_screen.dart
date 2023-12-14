import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/core/extension/bool.dart';
import 'package:misskey_dog/core/extension/object.dart';
import 'package:misskey_dog/core/router/app_router.gr.dart';

@RoutePage()
final class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchText = useState('');

    return Scaffold(
      appBar: AppBar(title: Text('検索'.i18n)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 64),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'キーワード'.i18n,
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
              ),
              onChanged: (text) => searchText.value = text,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: searchText.value.isNotEmpty.takeIfTrue()?.map((_) {
                return () {
                  if (searchText.value.startsWith('#')) {
                    context.pushRoute(HashTagNotesRoute(hashTag: searchText.value));
                  } else {
                    context.pushRoute(SearchKeyWordRoute(keyword: searchText.value));
                  }
                };
              }),
              child: Text('検索'.i18n),
            )
          ],
        ),
      ),
    );
  }
}
