import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_editing_controller_provider.g.dart';

@riverpod
// 状態変化による通知まではしない
// ignore: unsupported_provider_value
TextEditingController unsafeTextEditingController(UnsafeTextEditingControllerRef ref, {required String uuid}) {
  final controller = TextEditingController();

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
}
