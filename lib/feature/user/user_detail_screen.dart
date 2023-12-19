import 'package:flutter/material.dart';
import 'package:i18n_extension/default.i18n.dart';

final class UserDetailScreen extends StatelessWidget {
  final String userId;

  static final _tabs = [
    (title: '概要'.i18n, child: const Text('a')),
    (title: 'ノート'.i18n, child: const Text('b')),
  ];

  const UserDetailScreen({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (_, __) => [
            SliverAppBar(
              title: Text('ユーザー詳細'.i18n),
              bottom: TabBar(tabs: [
                for (final tab in _tabs) Tab(text: tab.title),
              ]),
            ),
          ],
          body: TabBarView(children: [
            for (final tab in _tabs) tab.child,
          ]),
        ),
      ),
    );
  }
}
