import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/m_app_colors.dart';

class MCalculatorButton extends StatelessWidget {
  String text;
  Color backgroundColor;
  Color textColor;
  int flex;
  Function onClick;

  MCalculatorButton(
    this.text,
    this.onClick, {
    this.backgroundColor = AppColors.gray,
    this.textColor = AppColors.darkBlue,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            onPressed: () {
              onClick(text);
              print("User clicked $text");
            },
            child: Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: 38, fontWeight: FontWeight.bold, backgroundColor: Colors.blue),
            )),
      ),
    );
  }
}
