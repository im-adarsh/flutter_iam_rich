import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            image: AssetImage('assets/iamrich.png'),
          ),
        ),
      ),
    );
  }
}
