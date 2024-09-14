import 'package:flutter/material.dart';

class AppSpacer {
  static EdgeInsets zero = EdgeInsets.zero;

  static EdgeInsets only(
      {double top = 0, double right = 0, double bottom = 0, double left = 0}) {
    return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
  }

  static EdgeInsets all(double spacing) {
    return AppSpacer.only(
        bottom: spacing, top: spacing, right: spacing, left: spacing);
  }

  static EdgeInsets right(double spacing) {
    return AppSpacer.only(right: spacing);
  }

  static EdgeInsets left(double spacing) {
    return AppSpacer.only(left: spacing);
  }

  static EdgeInsets top(double spacing) {
    return AppSpacer.only(top: spacing);
  }

  static EdgeInsets bottom(double spacing) {
    return AppSpacer.only(bottom: spacing);
  }

  static EdgeInsets horizontal(double spacing) {
    return AppSpacer.only(left: spacing, right: spacing);
  }

  static EdgeInsets vertical(double spacing) {
    return AppSpacer.only(top: spacing, bottom: spacing);
  }

  static double safeAreaTop(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }
}
