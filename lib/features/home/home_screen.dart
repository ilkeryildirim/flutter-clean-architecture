import 'package:flutter/material.dart';

import '../../core/widgets/base/base_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseScreen<HomeScreen> {
  var a = 1;

  @override
  Widget buildBody() {
    return Center(
      child: Text('Welcome to Home Screen $a'),
    );
  }

  /*

  @override
  List<BlocListener> additionalListeners() {
    return [
      BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeStateFetcingData) {
            print('Firestore Loading');
          }
        },
      ),
    ];
  }

   */

  @override
  void onAppBarIconPressed() {
    setState(() {
      a++;
    });
    print('AppBar icon pressed in HomeScreen');
  }

  @override
  void onFloatingActionButtonPressed() {
    print('FloatingActionButton pressed in HomeScreen');
  }

  @override
  bool get hasAppBar => false;

  @override
  bool get hasFloatingActionButton => false;
}
