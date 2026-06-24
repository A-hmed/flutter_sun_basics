import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/screens/home/home.dart';
import 'package:flutter_basics_c19/sun_wed/screens/register/register.dart';

class Login extends StatelessWidget {
  static const routeName = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
                child: Text("To home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Register.routeName);
                },
                child: Text("To Register"))
          ],
        ),
      ),
    );
  }
}
