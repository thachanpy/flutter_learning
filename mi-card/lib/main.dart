import 'package:flutter/material.dart';

void main() {
  runApp(MiCard());
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/images/thachanpy.png"),
                backgroundColor: Colors.white,
              ),
              Text(
                "Thach An",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SigmarOne'
                ),
              ),
              Text(
                "Newbie Developer",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal[200],
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.teal[100],
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+84 834 240 794",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 2
                      ),
                    )
                  ),
                ),
              ),
              Card(
                color: Colors.teal[100],
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "thachanpy@gmail.com",
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 2
                      ),
                    )
                  ),
                ),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
          )
        ),
      ),
    );
  }
}
