import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:misskey_dog/core/extension/widget.dart';
import 'package:misskey_dog/model/account/account.dart';
import 'dart:math' as math;

import 'package:misskey_dog/model/note/provider/note_force_sensitive_provider.dart';

final class HomeAvaterIcon extends HookConsumerWidget {
  final Account account;
  final void Function() onPressed;

  const HomeAvaterIcon({super.key, required this.account, required this.onPressed});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController = useAnimationController(duration: const Duration(milliseconds: 500));
    final isForceSensitiveRemoved = ref.watch(noteForceSensitiveRemovedProvider);

    useEffect(() {
      animationController.repeat();

      return null;
    }, const []);

    return IconButton(
      icon: Stack(
        children: [
          if (isForceSensitiveRemoved)
            AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: animationController.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                      Colors.green,
                      Colors.blue,
                      Colors.indigo,
                      Colors.purple,
                    ],
                  ),
                ),
              ),
            ),
          (switch (account.user.avatarUrl) {
            final avatarUrl? => CircleAvatar(
                foregroundImage: CachedNetworkImageProvider(avatarUrl),
              ),
            _ => const Icon(Icons.person),
          })
              .padding(const EdgeInsets.all(3)),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
