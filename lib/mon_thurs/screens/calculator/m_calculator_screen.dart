import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/calculator/m_calculator_button.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/m_app_colors.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/m_text_styles.dart';

class MCalculatorScreen extends StatefulWidget {
  static const routeName = "calculator";

  @override
  State createState() {
    return _MCalculatorScreenState();
  }
}

class _MCalculatorScreenState extends State {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    textAlign: TextAlign.end,
                    result,
                    style: AppTextStyles.white48Medium,
                  ),
                ),
              )),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  Expanded(
                    flex: 75,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  spacing: 22,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    MCalculatorButton(
                                      "Ac",
                                      onDigitClick,
                                      backgroundColor: AppColors.lightGray,
                                      textColor: AppColors.white,
                                    ),
                                    MCalculatorButton("7", onDigitClick),
                                    MCalculatorButton("4", onDigitClick),
                                    MCalculatorButton("1", onDigitClick),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  spacing: 22,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    MCalculatorButton(
                                      "x",
                                      onDigitClick,
                                      backgroundColor: AppColors.lightGray,
                                      textColor: AppColors.white,
                                    ),
                                    MCalculatorButton("8", onDigitClick),
                                    MCalculatorButton("5", onDigitClick),
                                    MCalculatorButton("2", onDigitClick),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  spacing: 22,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    MCalculatorButton(
                                      "/",
                                      onOperatorClick,
                                      backgroundColor: AppColors.darkBlue,
                                      textColor: AppColors.white,
                                    ),
                                    MCalculatorButton("9", onDigitClick),
                                    MCalculatorButton("6", onDigitClick),
                                    MCalculatorButton("3", onDigitClick),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.only(top: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                MCalculatorButton(
                                  "0",
                                  onDigitClick,
                                  flex: 2,
                                ),
                                MCalculatorButton(".", onDigitClick),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 25,
                    child: Column(
                      spacing: 22,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MCalculatorButton(
                          "*",
                          onOperatorClick,
                          backgroundColor: AppColors.darkBlue,
                          textColor: AppColors.white,
                          flex: 25,
                        ),
                        MCalculatorButton(
                          "-",
                          onOperatorClick,
                          flex: 25,
                          backgroundColor: AppColors.darkBlue,
                          textColor: AppColors.white,
                        ),
                        MCalculatorButton(
                          "+",
                          onOperatorClick,
                          backgroundColor: AppColors.darkBlue,
                          textColor: AppColors.white,
                          flex: 40,
                        ),
                        MCalculatorButton(
                          "=",
                          onEqualClick,
                          backgroundColor: AppColors.darkBlue,
                          textColor: AppColors.white,
                          flex: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
    if (savedOperator.isEmpty) {
      lhs = result;
    } else {
      lhs = calculate(lhs, savedOperator, result);
    }
    savedOperator = operator;
    result = "";
    setState(() {});
    print("lhs = $lhs, savedOperator = ${savedOperator}");
  }

  void onEqualClick(String operator) {
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
    } else if (operator == "-") {
      return "${n1 - n2}";
    } else if (operator == "/") {
      return "${n1 / n2}";
    } else {
      return "${n1 * n2}";
    }
  }
}
