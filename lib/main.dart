import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      theme: ThemeData(
        hintColor: Colors.grey[300],
        fontFamily: "MonsteratRegular",
        inputDecorationTheme: InputDecorationTheme(
          border: UnderlineInputBorder(),
        ),
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 32.0, color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 240.0,
                    padding: EdgeInsets.only(top: 40.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: "Name",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
