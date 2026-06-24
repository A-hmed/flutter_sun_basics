import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/xo/xo_button.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/app_constants.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/m_text_styles.dart';
import 'package:flutter_basics_c19/mon_thurs/widgets/app_scaffold.dart';

class SXoScreen extends StatefulWidget {
  static String routeName = "xo";

  const SXoScreen({super.key});

  @override
  State<SXoScreen> createState() => _SXoScreenState();
}

class _SXoScreenState extends State<SXoScreen> {
  late String firstPlayer;
  late String secondPlayer;

  @override
  Widget build(BuildContext context) {
    firstPlayer = ModalRoute
        .of(context)!
        .settings
        .arguments as String;
    secondPlayer = firstPlayer == AppConstants.o ? AppConstants.x : AppConstants.o;
    return AppScaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTimer(),
              SizedBox(height: 32),
              buildPlayerTurn(),
              SizedBox(height: 32),
              buildBoard()
            ],
          ),
        ));
  }

  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  String getFormattedTime() {
    int seconds = timer.tick;
    int min = timer.tick ~/ 60;
    seconds = seconds - min * 60;

    /// seconds % 50
    return "${min < 10 ? "0" : ""}$min:${seconds < 10 ? "0" : ""}$seconds";
  }

  buildTimer() =>
      Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(44)),
        padding: EdgeInsets.all(16),
        child: Text(
          getFormattedTime(),
          textAlign: TextAlign.center,
          style: AppTextStyles.black32SemiBold,
        ),
      );

  buildPlayerTurn() =>
      Text(
        "Player ${counter.isEven ? "1" : "2"}’s Turn",
        style: AppTextStyles.white36Bold,
        textAlign: TextAlign.center,
      );

  List<String> board = ["", "", "", "", "", "", "", "", ""];

  buildBoard() =>
      Expanded(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(44),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        XoButton(
                          symbol: board[0],
                          onClick: onPlayerClick,
                          index: 0,
                        ),
                        XoButton(
                          symbol: board[1],
                          onClick: onPlayerClick,
                          index: 1,
                        ),
                        XoButton(
                          symbol: board[2],
                          onClick: onPlayerClick,
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        XoButton(
                          symbol: board[3],
                          onClick: onPlayerClick,
                          index: 3,
                        ),
                        XoButton(
                          symbol: board[4],
                          onClick: onPlayerClick,
                          index: 4,
                        ),
                        XoButton(
                          symbol: board[5],
                          onClick: onPlayerClick,
                          index: 5,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        XoButton(
                          symbol: board[6],
                          onClick: onPlayerClick,
                          index: 6,
                        ),
                        XoButton(
                          symbol: board[7],
                          onClick: onPlayerClick,
                          index: 7,
                        ),
                        XoButton(
                          symbol: board[8],
                          onClick: onPlayerClick,
                          index: 8,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 12,
                  endIndent: 12,
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 12,
                  endIndent: 12,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 12,
                  endIndent: 12,
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 12,
                  endIndent: 12,
                ),
              ],
            )
          ],
        ),
      );

  int counter = 0;

  void resetBoard() {
    board = ["", "", "", "", "", "", "", "", ""];
    counter = 0;
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {});
    });
    setState(() {});
  }

  onPlayerClick(int index) {
    if (board[index].isNotEmpty) return;
    board[index] = counter.isEven ? firstPlayer : secondPlayer;

    if (checkWinner(board[index])) {
      resetBoard();
      return;
    }
    if (counter == 8) {
      resetBoard();
      return;
    }

    counter++;
    setState(() {});
  }

  bool checkWinner(String symbol) {
    ///Rows
    if (board[0] == symbol && board[1] == symbol && board[2] == symbol) {
      return true;
    }

    if (board[3] == symbol && board[4] == symbol && board[5] == symbol) {
      return true;
    }
    if (board[6] == symbol && board[7] == symbol && board[8] == symbol) {
      return true;
    }
    // for(int i = 0; i <= 6; i++){
    //   if (board[i] == symbol && board[i + 1] == symbol && board[i + 2] == symbol) {
    //     return true;
    //   }
    // }

    ///Columns
    if (board[0] == symbol && board[3] == symbol && board[6] == symbol) {
      return true;
    }
    if (board[1] == symbol && board[4] == symbol && board[7] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[5] == symbol && board[8] == symbol) {
      return true;
    }
    // for(int i = 0; i <= 2; i++){
    //   if (board[i] == symbol && board[i + 3] == symbol && board[i + 6] == symbol) {
    //     return true;
    //   }
    // }

    ///Diagonals
    if (board[0] == symbol && board[4] == symbol && board[8] == symbol) {
      return true;
    }
    if (board[2] == symbol && board[4] == symbol && board[6] == symbol) {
      return true;
    }
    return false;
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }
}
