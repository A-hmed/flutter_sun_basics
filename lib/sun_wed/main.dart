import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/screens/calculator/s_calculator_screen.dart';
import 'package:flutter_basics_c19/sun_wed/screens/home/home.dart';
import 'package:flutter_basics_c19/sun_wed/screens/login/login.dart';
import 'package:flutter_basics_c19/sun_wed/screens/register/register.dart';
import 'package:flutter_basics_c19/sun_wed/screens/xo/s_pick_player_screen.dart';
import 'package:flutter_basics_c19/sun_wed/screens/xo/s_xo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SPickPlayerScreen.routeName,
      routes: {
        Login.routeName: (_) {
          return Login();
        },
        Register.routeName: (_) => Register(),
        HomeScreen.routeName: (_) => HomeScreen(),
        SCalculatorScreen.routeName: (_) => SCalculatorScreen(),
        SXoScreen.routeName: (_) => SXoScreen(),
        SPickPlayerScreen.routeName: (_) => SPickPlayerScreen()
      },
    );
  }
}

/// Git commands:
/// init: Create empty repository (with master branch)
/// commit: Save changes in project
/// reverse: Create new commit with reversed changes
/// reset: Delete commits
/// branch: Create new copy of your current branch
/// switch: checkout branch in this repo
/// merge: Move commits from one branch to another
/// push: Uploads recent branch changes
/// pull: Downloads changes from remote repo
/// update: same as pull
/// fetch: Downloads changes from remote repo
/// Pull Request: Create merge request on git hub
