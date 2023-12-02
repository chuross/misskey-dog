import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ScrollController useLoadMore({required Function onNext}) {
  final controller = useScrollController(keepScrollOffset: true);

  useEffect(() {
    controller.addListener(() {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        onNext();
      }
    });

    return null;
  }, [controller]);

  return controller;
}
