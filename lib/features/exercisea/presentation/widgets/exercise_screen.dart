import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cleanbasearc/core/helpers/app_navigator.dart';
import 'package:cleanbasearc/features/exercisea/presentation/bloc/exercise_event.dart';
import 'package:cleanbasearc/shared/constants/app_texts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/widgets/base/base_screen.dart';
import '../../../../shared/constants/app_colors.dart';
import '../bloc/exercise_bloc.dart';
import '../bloc/exercise_state.dart';

class ExerciseScreen extends StatefulWidget {
  @override
  _ExerciseScreenState createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends BaseScreen<ExerciseScreen> {
  final bloc = GetIt.I<ExerciseBloc>().add(LoadExercisesEvent());
  var a = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget buildBody() {
    final isDarkMode = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.setLocale(Locale("en"));
            },
            child: Text(AppTexts.instance.english),
          ),
          ElevatedButton(
            onPressed: () {
              context.setLocale(Locale("tr"));
            },
            child: Text(AppTexts.instance.turkish),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (isDarkMode) {
                AdaptiveTheme.of(context).setLight();
              } else {
                AdaptiveTheme.of(context).setDark();
              }
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: AppColors.getButtonTextColor(context),
              backgroundColor: AppColors.getBackgroundColor(context),
            ),
            child: Text(AppTexts.instance.change_theme),
          ),
        ],
      ),
    );
  }

  @override
  List<BlocListener> screenListeners() {
    return [
      BlocListener<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          if (state is ExerciseLoadingState) {
            print('Firestore Loading');
            return;
          }
          if (state is ExerciseErrorState) {
            print(state.errorMessage);
            return;
          }
        },
      ),
    ];
  }

  @override
  void onAppBarIconPressed() {
    setState(() {
      a++;
    });
    print(AppTexts.instance.an_error_occured);
    AppNavigator.push(context, screen: ExerciseScreen());
    print('AppBar icon pressed in ExerciseScreen');
  }

  @override
  void onFloatingActionButtonPressed() {
    print('FloatingActionButton pressed in ExerciseScreen');
  }

  @override
  String get screenTitle => AppTexts.instance.screen_name_exercise;

  @override
  bool get hasAppBar => true;

  @override
  bool get hasFloatingActionButton => true;
}
