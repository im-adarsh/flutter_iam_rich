import 'package:flutter/material.dart';

enum Player {
  left,
  right,
}

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    Key key,
  }) : super(key: key);

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
              buildDiceCard("assets/icons/dice-1.png", Player.left),
              buildDiceCard("assets/icons/dice-2.png", Player.right),
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
          print(player.toString() + " clicked the dice");
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
