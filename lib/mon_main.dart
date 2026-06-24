import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/calculator/m_calculator_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/home/home_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/login/login_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/register/register_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/xo/xo_screen.dart';

Color blue = Color(0xff024383);

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: XoScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        "home": (_) => HomeScreen(),
        "register": (_) => RegisterScreen(),
        MCalculatorScreen.routeName: (_) => MCalculatorScreen(),
        XoScreen.routeName: (_) => XoScreen()
      },
    );
  }
}

/// Column Row Stack
