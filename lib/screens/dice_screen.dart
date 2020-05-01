import 'package:flutter/material.dart';
import 'package:flutteriamrich/widgets/dice_widget.dart';

class Dice extends StatelessWidget {
  const Dice({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Image(
            image: AssetImage("assets/rolling-dices.png"),
          ),
          title: Text("Dice"),
          backgroundColor: Colors.redAccent,
        ),
        body: DiceWidget(),
      ),
    );
  }
}
