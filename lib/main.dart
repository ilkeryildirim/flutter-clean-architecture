import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cleanbasearc/core/injector/base_injector.dart';
import 'package:cleanbasearc/features/exercisea/presentation/bloc/exercise_bloc.dart';
import 'package:cleanbasearc/features/exercisea/presentation/widgets/exercise_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/app/app_bloc.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  BaseInjector.init();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('tr')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: MyApp(
          savedThemeMode: savedThemeMode), // Kaydedilen tema modunu geçiriyoruz
    ),
  );
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({Key? key, this.savedThemeMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildTree(context);
  }

  Widget buildTree(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (_) => BaseInjector.sl<AppBloc>(),
        ),
        BlocProvider<ExerciseBloc>(
          create: (_) => BaseInjector.sl<ExerciseBloc>(),
        ),
      ],
      child: AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light, // Tema için açık mod
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.light, // ColorScheme de açık modda
          ),
          useMaterial3: true,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
        ),
        initial: savedThemeMode ?? AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MaterialApp(
          title: 'Flutter Demo',
          theme: theme,
          darkTheme: darkTheme,
          home: ExerciseScreen(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        ),
      ),
    );
  }
}
