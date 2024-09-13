import '../../core/entities/app_settings.dart';

AppSettings defaultAppSettings() {
  return AppSettings(
      locale: 'en',
      needsWelcome: true,
      needsTutorial: true,
      darkMode: false,
      primaryColor: 0xFF2196F3,
      secondaryColor: 0xFFDE690C,
      showMaterialGrid: false,
      showPerformanceOverlay: false,
      showSemanticOverlay: false,
      id: 0);
}
