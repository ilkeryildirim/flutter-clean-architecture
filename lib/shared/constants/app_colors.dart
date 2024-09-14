import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color _lightButtonColor = Color(0xFF6C79DB);
  static const Color _lightButtonTextColor = Color(0xFF2C2C2E);
  static const Color _lightBackgroundColor = Color(0xFFF4F6FA);

  static const Color _darkButtonColor = Color(0xFF3C3F41);
  static const Color _darkButtonTextColor = Color(0xFFCCCCCC);
  static const Color _darkBackgroundColor = Color(0xFF2C2C2E);

  static Color _getColor(BuildContext context,
      {required Color lightColor, required Color darkColor}) {
    final isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return isDarkMode ? darkColor : lightColor;
  }

  static Color getButtonColor(BuildContext context) {
    return _getColor(
      context,
      lightColor: _lightButtonColor,
      darkColor: _darkButtonColor,
    );
  }

  static Color getButtonTextColor(BuildContext context) {
    return _getColor(
      context,
      lightColor: _lightButtonTextColor,
      darkColor: _darkButtonTextColor,
    );
  }

  static Color getBackgroundColor(BuildContext context) {
    return _getColor(
      context,
      lightColor: _lightBackgroundColor,
      darkColor: _darkBackgroundColor,
    );
  }
}
