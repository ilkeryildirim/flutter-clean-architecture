import 'package:cleanbasearc/core/bloc/app/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseScreen<T extends StatefulWidget> extends State<T> {
  bool get hasAppBar => true;

  bool get hasFloatingActionButton => true;

  void onAppBarIconPressed() {}

  void onFloatingActionButtonPressed() {}

  void onAppStateChanged(AppState state) {}

  List<BlocListener> additionalListeners() {
    return [];
  }

  PreferredSizeWidget? buildAppBar() {
    if (hasAppBar) {
      return AppBar(
        title: Text('App Title'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: onAppBarIconPressed,
          ),
        ],
      );
    } else {
      return null;
    }
  }

  FloatingActionButton? buildFloatingActionButton() {
    if (hasFloatingActionButton) {
      return FloatingActionButton(
        onPressed: onFloatingActionButtonPressed,
        child: Icon(Icons.add),
      );
    } else {
      return null;
    }
  }

  Widget buildBody();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppBloc, AppState>(
          listener: (context, state) {
            onAppStateChanged(state);
          },
        ),
        ...additionalListeners(),
      ],
      child: Scaffold(
        appBar: buildAppBar(),
        body: buildBody(),
        floatingActionButton: buildFloatingActionButton(),
      ),
    );
  }
}