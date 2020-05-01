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
  var leftDiceSum = 1;
  var rightDiceSum = 1;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildPlayerMessage(),
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

  void resetState(int i) {
    setState(() {
      leftDiceNumber = 1;
      rightDiceNumber = 1;
      leftDiceSum = 1;
      rightDiceSum = 1;
    }
    );
  }

  List<Widget> buildPlayerMessage() {
    if (leftDiceSum == rightDiceSum && leftDiceSum > 1) {
      resetState(0);
      return <Widget>[
        Text(
          "Someone Won",
          style: TextStyle(
              fontFamily: "Source-Sans",
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        )
      ];
    } else
    if (leftDiceSum == rightDiceSum && (leftDiceSum == 1 || leftDiceSum == 0)) {
      return <Widget>[
        Text(
          "Lets Begin",
          style: TextStyle(
              fontFamily: "Source-Sans",
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        )
      ];
    } else {
      return <Widget>[
        Text(
          "$leftDiceSum",
          style: TextStyle(
              fontFamily: "Source-Sans",
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        ),
        SizedBox(
          width: 200,
          child: Divider(
            color: Colors.white,
          ),
        ),
        Text(
          "$rightDiceSum",
          style: TextStyle(
              fontFamily: "Source-Sans",
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent),
        )
      ];
    }
  }

  Expanded buildDiceCard(String assetImagePath, Player player) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          setState(() {
            var rng = new Random();
            var n = rng.nextInt(6) + 1;
            switch (player) {
              case Player.left:
                leftDiceNumber = n;
                leftDiceSum += leftDiceNumber;
                break;
              case Player.right:
                rightDiceNumber = n;
                rightDiceSum += rightDiceNumber;
                break;
              default:
                leftDiceNumber = n;
                rightDiceNumber = n;
                leftDiceSum += leftDiceNumber;
                rightDiceSum += rightDiceNumber;
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