import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:i18n_extension/default.i18n.dart';
import 'package:misskey_dog/feature/home/home_screen.dart';
import 'package:misskey_dog/feature/note/hash_tag_notes_screen.dart';
import 'package:misskey_dog/feature/note/keyword_notes_screen.dart';

final class SearchRoute extends GoRouteData {
  const SearchRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SearchScreen();
  }
}

final class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchTextController = useTextEditingController();
    final searchTextValue = useListenable(searchTextController);

    return Scaffold(
      appBar: AppBar(title: Text('検索'.i18n)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 64),
            TextField(
              controller: searchTextController,
              autofocus: true,
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: 'キーワード'.i18n,
                border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32))),
                suffixIcon: searchTextValue.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.cancel),
                        onPressed: () => searchTextController.text = '',
                      )
                    : null,
              ),
              onSubmitted: (_) => _search(context: context, keyword: searchTextValue.text),
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: searchTextValue.text.isNotEmpty ? () => _search(context: context, keyword: searchTextValue.text) : null,
              child: Text('検索'.i18n),
            )
          ],
        ),
      ),
    );
  }

  void _search({required BuildContext context, required String keyword}) {
    if (keyword.startsWith('#')) {
      HashtagNotesRoute(hashtag: keyword).push(context);
    } else {
      KeywordNotesRoute(keyword: keyword).push(context);
    }
  }
}
