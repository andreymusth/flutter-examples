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

    if (_selectedTab == 1) {
      properWidget = Container(
        color: Colors.cyan,
      );
    } else if (_selectedTab == 2) {
      properWidget = Container(
        color: Colors.amberAccent,
      );
    }

    return properWidget;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          child: Image.asset("assets/login_signup_image.png"),
          preferredSize: Size.fromHeight(400.0),
        ),
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
              child: _getProperColumn(),
            )
          ],
        ),
        bottomNavigationBar: Container(
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
