import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/utils/s_app_colors.dart';

class SCalculatorButton extends StatelessWidget {
  String text;
  Function onClick;
  Color backgroundColor;
  Color textColor;
  int flex;

  SCalculatorButton(this.text, this.onClick,
      {this.backgroundColor = SAppColors.gray,
      this.flex = 1,
      this.textColor = SAppColors.darkBlue});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16))),
            onPressed: () {
              onClick(text);
            },
            child: Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: 32, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
