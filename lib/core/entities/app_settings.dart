class AppSettings {
  int id;
  bool premiumContent;
  bool needsWelcome;
  bool needsTutorial;
  bool darkMode;
  int primaryColor;
  int secondaryColor;
  bool showMaterialGrid;
  bool showPerformanceOverlay;
  bool showSemanticOverlay;
  String locale;

  AppSettings({
    required this.id,
    this.locale = 'en',
    this.premiumContent = false,
    this.needsWelcome = true,
    this.needsTutorial = true,
    this.darkMode = false,
    this.primaryColor = 0xFF2196F3,
    this.secondaryColor = 0xFFDE690C,
    this.showMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.showSemanticOverlay = false,
  });

  AppSettings copyWith({
    int? id,
    String? locale,
    bool? premiumContent,
    bool? needsWelcome,
    bool? needsTutorial,
    bool? darkMode,
    int? primaryColor,
    int? secondaryColor,
    bool? showMaterialGrid,
    bool? showPerformanceOverlay,
    bool? showSemanticOverlay,
  }) {
    return AppSettings(
      id: id ?? this.id,
      premiumContent: premiumContent ?? this.premiumContent,
      locale: locale ?? this.locale,
      needsWelcome: needsWelcome ?? this.needsWelcome,
      needsTutorial: needsTutorial ?? this.needsTutorial,
      darkMode: darkMode ?? this.darkMode,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      showMaterialGrid: showMaterialGrid ?? this.showMaterialGrid,
      showPerformanceOverlay:
      showPerformanceOverlay ?? this.showPerformanceOverlay,
      showSemanticOverlay: showSemanticOverlay ?? this.showSemanticOverlay,
    );
  }

  @override
  String toString() {
    return 'AppSettings {\n'
        '  id: $id,\n'
        '  locale: $locale,\n'
        '  needsWelcome: $needsWelcome,\n'
        '  needsTutorial: $needsTutorial,\n'
        '  premiumContent: $premiumContent,\n'
        '  darkMode: $darkMode,\n'
        '  primaryColor: $primaryColor,\n'
        '  secondaryColor: $secondaryColor,\n'
        '  showMaterialGrid: $showMaterialGrid,\n'
        '  showPerformanceOverlay: $showPerformanceOverlay,\n'
        '  showSemanticOverlay: $showSemanticOverlay\n'
        '}';
  }

  static AppSettings fromMap(Map<String, dynamic> map) {
    return AppSettings(
      id: map['id'] as int,
      locale: map['locale'] as String,
      needsWelcome: map['needsWelcome'] as bool,
      needsTutorial: map['needsTutorial'] as bool,
      premiumContent: map['premiumContent'] as bool,
      darkMode: map['darkMode'] as bool,
      primaryColor: map['primaryColor'] as int,
      secondaryColor: map['secondaryColor'] as int,
      showMaterialGrid: map['showMaterialGrid'] as bool,
      showPerformanceOverlay: map['showPerformanceOverlay'] as bool,
      showSemanticOverlay: map['showSemanticOverlay'] as bool,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'locale': locale,
      'needsWelcome': needsWelcome,
      'needsTutorial': needsTutorial,
      'darkMode': darkMode,
      'premiumContent': premiumContent,
      'primaryColor': primaryColor,
      'secondaryColor': secondaryColor,
      'showMaterialGrid': showMaterialGrid,
      'showPerformanceOverlay': showPerformanceOverlay,
      'showSemanticOverlay': showSemanticOverlay,
    };
  }
}
