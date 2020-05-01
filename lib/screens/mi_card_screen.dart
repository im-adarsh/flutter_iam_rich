import 'package:flutter/material.dart';


Color miCardBgColor = Colors.cyan.shade900;

class MiCard extends StatelessWidget {
  const MiCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: miCardBgColor,
        body: SafeArea(
            child: Container(
                color: miCardBgColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(
                          height: 20,
                          width: 200,
                          child: Divider(
                            color: Colors.white,
                          ),
                        ),
                        buildMiCardRowCard(
                            Icons.code, "https://github.com/im-adarsh"),
                        buildMiCardRowCard(
                            Icons.phone, "+65 1234 5678"),
                        buildMiCardRowCard(
                            Icons.email, "adarshkumar9820@gmail.com"),
                      ],
                    )
                  ],
                ))),
      ),
    );
  }

  Card buildMiCardRowCard(IconData icon, String text) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
          vertical: 10, horizontal: 25
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: miCardBgColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15.0,
                color: miCardBgColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
