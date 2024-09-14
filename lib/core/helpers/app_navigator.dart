import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppNavigator {
  static Future<T?> push<T>(
    BuildContext context, {
    required Widget screen,
    Duration? duration,
    PageTransitionType? transitionType,
    bool? fullscreenDialog,
  }) {
    return Navigator.push(
      context,
      _buildPageRoute(
        screen: screen,
        duration: duration ?? const Duration(milliseconds: 400),
        transitionType: transitionType ?? PageTransitionType.fade,
        fullscreenDialog: fullscreenDialog ?? false,
      ),
    );
  }

  static Future<T?> replace<T, TO>(
    BuildContext context, {
    required Widget screen,
    Duration? duration,
    PageTransitionType? transitionType,
    bool? fullscreenDialog,
  }) {
    return Navigator.pushReplacement(
      context,
      _buildPageRoute(
        screen: screen,
        duration: duration ?? const Duration(milliseconds: 400),
        transitionType: transitionType ?? PageTransitionType.fade,
        fullscreenDialog: fullscreenDialog ?? false,
      ),
    );
  }

  static void pop<T>(BuildContext context, [T? result]) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, result);
    } else {
      throw Exception("Can't pop, no route to go back.");
    }
  }

  static void popUntil(BuildContext context, String routeName) {
    Navigator.popUntil(context, ModalRoute.withName(routeName));
  }

  static Future<bool> maybePop(BuildContext context) {
    return Navigator.maybePop(context);
  }

  static PageRoute<T> _buildPageRoute<T>({
    required Widget screen,
    Duration? duration,
    PageTransitionType? transitionType,
    bool? fullscreenDialog,
  }) {
    return PageTransition<T>(
      type: transitionType ?? PageTransitionType.fade,
      duration: duration ?? const Duration(milliseconds: 400),
      child: screen,
      fullscreenDialog: fullscreenDialog ?? false,
    );
  }
}
