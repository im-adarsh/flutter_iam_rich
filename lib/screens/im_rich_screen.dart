import 'package:flutter/material.dart';

class IAmRich extends StatelessWidget {
  const IAmRich({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("I Am Rich")),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/iamrich.png'),
          ),
        ),
      ),
    );
  }
}
