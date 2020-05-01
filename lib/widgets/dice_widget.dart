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
      ],
    );
  }
}
