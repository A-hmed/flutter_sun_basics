import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/sun_wed/screens/calculator/s_calculator_button.dart';
import 'package:flutter_basics_c19/sun_wed/utils/s_app_colors.dart';
import 'package:flutter_basics_c19/sun_wed/utils/s_text_styles.dart';

class SCalculatorScreen extends StatefulWidget {
  static const routeName = "calculator";

  @override
  State createState() {
    return _SCalculatorScreenState();
  }
}

class _SCalculatorScreenState extends State {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SAppColors.black,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Container(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.end,
                  result,
                  style: STextStyles.white48Medium,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 22,
                              children: [
                                SCalculatorButton(
                                  "Ac",
                                  onDigitClick,
                                  backgroundColor: SAppColors.lightGray,
                                  textColor: SAppColors.white,
                                ),
                                SCalculatorButton(
                                  "7",
                                  onDigitClick,
                                ),
                                SCalculatorButton("4", onDigitClick),
                                SCalculatorButton("1", onDigitClick),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 22,
                              children: [
                                SCalculatorButton(
                                  "x",
                                  onDigitClick,
                                  backgroundColor: SAppColors.lightGray,
                                  textColor: SAppColors.white,
                                ),
                                SCalculatorButton("8", onDigitClick),
                                SCalculatorButton("5", onDigitClick),
                                SCalculatorButton("2", onDigitClick),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 22,
                              children: [
                                SCalculatorButton(
                                  "/",
                                  onOperatorClick,
                                  backgroundColor: SAppColors.darkBlue,
                                  textColor: SAppColors.white,
                                ),
                                SCalculatorButton("9", onDigitClick),
                                SCalculatorButton("6", onDigitClick),
                                SCalculatorButton("3", onDigitClick),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SCalculatorButton(
                                "0",
                                onDigitClick,
                                backgroundColor: SAppColors.darkBlue,
                                textColor: SAppColors.white,
                                flex: 2,
                              ),
                              SCalculatorButton(
                                ".",
                                onDigitClick,
                                backgroundColor: SAppColors.darkBlue,
                                textColor: SAppColors.white,
                                flex: 1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 22,
                      children: [
                        SCalculatorButton(
                          "*",
                          onOperatorClick,
                          backgroundColor: SAppColors.darkBlue,
                          textColor: SAppColors.white,
                          flex: 20,
                        ),
                        SCalculatorButton(
                          "-",
                          onOperatorClick,
                          backgroundColor: SAppColors.darkBlue,
                          textColor: SAppColors.white,
                          flex: 20,
                        ),
                        SCalculatorButton(
                          "+",
                          onOperatorClick,
                          backgroundColor: SAppColors.darkBlue,
                          textColor: SAppColors.white,
                          flex: 32,
                        ),
                        SCalculatorButton(
                          "=",
                          onEqualClick,
                          backgroundColor: SAppColors.darkBlue,
                          textColor: SAppColors.white,
                          flex: 32,
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onDigitClick(String digit) {
    if(result.contains(".") && digit == "."){
      return;
    }
    result += digit;
    setState(() {});
  }

  String lhs = "";
  String savedOperator = "";

  void onOperatorClick(String operator) {
    if(lhs.isEmpty) return;
    if (savedOperator.isEmpty) {
      lhs = result;
    } else {
      lhs = calculate(lhs, savedOperator, result);
    }
    savedOperator = operator;
    result = "";
    print("lhs = $lhs, operator = $savedOperator");
    setState(() {});
  }

  void onEqualClick(String digit){
    result = calculate(lhs, savedOperator, result);
    lhs = "";
    savedOperator = "";
    setState(() {});
  }

  String calculate(String lhs, String operator, String rhs) {

    double n1 = double.parse(lhs);
    double n2 = double.parse(rhs);

    if (operator == "+") {
      return "${n1 + n2}";
    } else if (operator == "*") {
      return "${n1 * n2}";
    } else if (operator == "-") {
      return "${n1 - n2}";
    } else {
      return "${n1 / n2}";
    }
  }
}
