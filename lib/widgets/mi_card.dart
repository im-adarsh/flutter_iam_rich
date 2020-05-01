import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
            child: Container(
                color: Colors.blueGrey.shade900,
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
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Backend Engineer",
                            style: TextStyle(
                                fontFamily: "Source-Sans",
                                fontSize: 20.0,
                                letterSpacing: 2.5,
                                color: Colors.white),
                          ),
                        ),
                        Divider(
                          color: Colors.white,
                          indent: 30,
                          endIndent: 30,
                        ),
                        Container(
                          color: Colors.white,
                          height: 30,
                          width: 350,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.code,
                                color: Colors.blueGrey.shade900,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "https://github.com/im-adarsh",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.blueGrey.shade900,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          color: Colors.white,
                          height: 30,
                          width: 350,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.phone,
                                color: Colors.blueGrey.shade900,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "+65 1234 5678",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.blueGrey.shade900,
                                ),
                              ),
                            ],
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
