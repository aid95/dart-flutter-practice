import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        title: Text('DICE OR DIE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/dice$leftDice.png',
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/dice$rightDice.png',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            ButtonTheme(
                minWidth: 100.0,
                height: 60.0,
                child: ElevatedButton(
                  child: Icon(Icons.play_arrow),
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6) + 1;
                      rightDice = Random().nextInt(6) + 1;
                    });
                    showToast('Left dice : $leftDice, Right dice : $rightDice');
                  },
                ))
          ],
        ),
      ),
    );
  }
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
