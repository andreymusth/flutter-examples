import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTab createState() => _MyTab();
}

class _MyTab extends State<MyTabBar> {
  int _selectedTab = 1;

  static Color _normal = Color.fromRGBO(46, 52, 66, 1.0);
  static Color _faded = Color.fromRGBO(32, 34, 39, 1.0);

  Color _firstTabColor = _normal;
  Color _secondTabColor = _faded;

  _toggleTab(int tabId) {
    setState(() {
      _selectedTab = tabId;
      if (tabId == 1) {
        _firstTabColor = _normal;
        _secondTabColor = _faded;
      } else {
        _firstTabColor = _faded;
        _secondTabColor = _normal;
      }
    });
  }

  Widget _getProperColumn() {
    Widget properWidget;

    if (_selectedTab == 2) {
      properWidget = Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Email"),
            style: TextStyle(color: Colors.white),
          )
        ],
      );
    } else if (_selectedTab == 1) {
      properWidget = Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Email"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Password"),
            obscureText: true,
            style: TextStyle(color: Colors.white),
          )
        ],
      );
    }

    return properWidget;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, hintColor: Colors.grey[400]),
      home: Scaffold(
        appBar: PreferredSize(
          child: Image.asset("assets/login_signup_image.png"),
          preferredSize: Size.fromHeight(400.0),
        ),
        backgroundColor: _normal,
        body: Column(
          children: <Widget>[
            Container(
              height: 50.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            _toggleTab(1);
                            debugPrint("pressed 1");
                          },
                          child: Center(
                            child: Text(
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      color: _firstTabColor,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            _toggleTab(2);
                            debugPrint("pressed 2");
                          },
                          child: Center(
                            child: Text(
                              "Sign up",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        color: Colors.transparent,
                      ),
                      color: _secondTabColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: _normal,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 60.0,
                      right: 60.0,
                    ),
                    child: _getProperColumn(),
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          child: Material(
            child: InkWell(
              onTap: () {
                print("pressed 3");
              },
              child: Center(
                child: Text(
                  "Get started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            color: Colors.transparent,
          ),
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
