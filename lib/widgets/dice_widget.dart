import 'dart:math';

import 'package:flutter/material.dart';

enum Player {
  left,
  right,
}

class DiceWidget extends StatefulWidget {
  @override
  _DiceWidgetState createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
            ],
          ),
        ),
        Center(
          child: Row(
            children: <Widget>[
              buildDiceCard(
                  "assets/icons/dice-$leftDiceNumber.png", Player.left),
              buildDiceCard(
                  "assets/icons/dice-$rightDiceNumber.png", Player.right),
            ],
          ),
        ),
      ],
    );
  }

  Expanded buildDiceCard(String assetImagePath, Player player) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            var rng = new Random();
            var n = rng.nextInt(7);
            if (n == 0) {
              n = 1;
            }
            switch (player) {
              case Player.left:
                leftDiceNumber = n;
                break;
              case Player.right:
                rightDiceNumber = n;
                break;
              default:
                leftDiceNumber = n;
                rightDiceNumber = n;
            }
          });
        },
        child: Image(
          image: AssetImage(assetImagePath),
          color: Colors.redAccent,
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}