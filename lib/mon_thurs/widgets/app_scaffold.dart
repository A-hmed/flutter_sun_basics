import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/m_app_colors.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.lightBlue, AppColors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: body,
        ),
      ),
    );
  }
}
