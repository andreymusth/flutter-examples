import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_signup.dart';
import 'my_tab_bar.dart';
import 'welcome_back.dart';

void main() => runApp(WelcomeBack());

class MainPage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    print("Success");

    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    return MaterialApp(
      theme: ThemeData(
        hintColor: Colors.grey[300],
        fontFamily: "MonsteratRegular",
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          border: UnderlineInputBorder(),
        ),
      ),
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 60.0),
                      child: Text(
                        "Sign up",
                        style: TextStyle(fontSize: 32.0, color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      padding: EdgeInsets.only(top: 40.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "MonsteratRegular",
                          fontSize: 16.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Name",
                        ),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      padding: EdgeInsets.only(top: 40.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "MonsteratRegular",
                          fontSize: 16.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      width: 200.0,
                      padding: EdgeInsets.only(top: 40.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "MonsteratRegular",
                          fontSize: 16.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.0),
                      child: Container(
                        width: 200.0,
                        height: 50.0,
                        child: RaisedButton(
                          textTheme: ButtonTextTheme.accent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogInSignUp()));
                          },
                          child: Text(
                            "Sign Up",
                            style:
                                TextStyle(color: Colors.cyan, fontSize: 16.0),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
