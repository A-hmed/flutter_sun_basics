import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  static const routeName = "register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Register",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("To home")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to login"))
          ],
        ),
      ),
    );
  }
}

///pushNamed
///pop
///pushReplacmentNamed
