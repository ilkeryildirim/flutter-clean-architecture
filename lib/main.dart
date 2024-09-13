import 'package:cleanbasearc/core/injector/base_injector.dart';
import 'package:cleanbasearc/features/exercisea/injector/exercise_injector.dart';
import 'package:cleanbasearc/features/exercisea/presentation/bloc/exercise_bloc.dart';
import 'package:cleanbasearc/features/exercisea/presentation/widgets/exercise_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/app/app_bloc.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  BaseInjector.init();
  ExerciseInjector.init();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('tr')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return buildTree();
  }

  Widget buildTree() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (_) => BaseInjector.sl<AppBloc>(),
        ),
        BlocProvider<ExerciseBloc>(
          create: (_) => BaseInjector.sl<ExerciseBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ExerciseScreen(),
      ),
    );
  }
}
