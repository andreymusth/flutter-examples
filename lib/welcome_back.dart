import 'package:flutter/material.dart';

const Color _normal = Color.fromRGBO(46, 52, 66, 1.0);

class WelcomeBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _normal,
        body: Container(
          decoration: BoxDecoration(
            border: BorderDirectional(
              bottom: BorderSide(
                
              )
            )
          ),
        ),
      ),
    );
  }
}
