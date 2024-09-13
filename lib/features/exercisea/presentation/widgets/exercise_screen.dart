import 'package:cleanbasearc/features/exercisea/presentation/bloc/exercise_event.dart';
import 'package:cleanbasearc/shared/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/widgets/base/base_screen.dart';
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
    return Center(
      child: Text('Welcome $screenTitle'),
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
