import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/app_constants.dart';

class XoButton extends StatelessWidget {
  final String symbol;
  final Function onClick;
  final int index;


  const XoButton({required this.symbol, required this.onClick, required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        onClick(index);
      },
      child: symbol.isEmpty
          ? SizedBox(
              width: double.infinity,
              height: double.infinity,
            )
          : Image.asset(symbol == AppConstants.x
              ? "assets/images/ic_x.png"
              : "assets/images/ic_o.png"),
    ));
  }
}
