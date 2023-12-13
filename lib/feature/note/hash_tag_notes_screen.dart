import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
final class HashTagNotesScreen extends ConsumerWidget {
  final String hashTag;

  const HashTagNotesScreen({super.key, required this.hashTag});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(hashTag)),
      body: Container(),
    );
  }
}
