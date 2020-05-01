import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image(
                  image: AssetImage("assets/icons/dice-1.png"),
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage("assets/icons/dice-1.png"),
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Row(
            children: <Widget>[
              buildDiceCard("assets/icons/dice-1.png"),
              buildDiceCard("assets/icons/dice-1.png"),
            ],
          ),
        ),
      ],
    );
  }

  Expanded buildDiceCard(String assetImagePath) {
    return Expanded(
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
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
