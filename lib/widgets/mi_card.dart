import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
            child: Container(
                color: Colors.blueGrey[900],
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/im-adarsh.jpeg"),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Adarsh Kumar",
                            style: TextStyle(
                                fontFamily: "Pacifico",
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Backend Engineer",
                            style: TextStyle(
                                fontFamily: "Source-Sans",
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Container(
                          child: TextField(
                            decoration:
                                InputDecoration(fillColor: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ))),
      ),
    );
  }
}
