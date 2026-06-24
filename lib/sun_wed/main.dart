import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/screens/calculator/s_calculator_screen.dart';
import 'package:flutter_basics_c19/sun_wed/screens/home/home.dart';
import 'package:flutter_basics_c19/sun_wed/screens/login/login.dart';
import 'package:flutter_basics_c19/sun_wed/screens/register/register.dart';
import 'package:flutter_basics_c19/sun_wed/screens/xo/s_pick_player_screen.dart';
import 'package:flutter_basics_c19/sun_wed/screens/xo/s_xo_screen.dart';

void main() {
  final x;
  x = 2;
  const y =32;

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
