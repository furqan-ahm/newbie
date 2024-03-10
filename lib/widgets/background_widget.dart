import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum BackgroundStyle { chandelier, stadium, room, end }

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget(
      {Key? key, required this.child, this.style,})
      : super(key: key);

  final Widget child;
  final BackgroundStyle? style;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return RotatedBox(
        quarterTurns: Get.size.width > Get.size.height ? 0 : 1,
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          // decoration: BoxDecoration(
          //   image: style != null
          //       ? DecorationImage(
          //           image: AssetImage('assets/images/${style!.name}.png'),
          //           fit: BoxFit.cover)
          //       : null,
          // ),
          child: child,
        ),
      );
    });
  }
}
