import 'package:flutter/material.dart';

class AppShadowController {
  ValueNotifier<bool> isShadowVisible = ValueNotifier<bool>(false);

  void toggleShadow() {
    isShadowVisible.value = !isShadowVisible.value;
  }

  static List<BoxShadow>? getBoxShadow({
    required bool isShadowVisible,
    double elevation = 0.0,
    Color shadowColor = Colors.grey,
    double spreadRadius = 2.0,
  }) {
    if (isShadowVisible && elevation > 0) {
      return [
        BoxShadow(
          blurRadius: elevation,
          spreadRadius: spreadRadius,
          color: shadowColor,
        ),
      ];
    }
    return null;
  }
}
