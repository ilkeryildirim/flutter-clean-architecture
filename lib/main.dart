import 'package:cleanbasearc/core/injector/base_injector.dart';
import 'package:cleanbasearc/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/app/app_bloc.dart';

void main() {
  BaseInjector.init();
  runApp(const MyApp());
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
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
