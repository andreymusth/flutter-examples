import 'package:flutter/material.dart';
import 'my_tab_bar.dart';

class LogInSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Image.asset("assets/login_signup_image.png"),
            MyTabBar(),
          ],
        ),bottomNavigationBar: Container(
        height: 60.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(110, 198, 252, 1.0),
              Color.fromRGBO(69, 206, 189, 1.0)
            ],
          ),
        ),
      ),
      ),
    );
  }
}
