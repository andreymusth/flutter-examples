import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget{
  HomePage createState()=> HomePage();
}

class HomePage extends State<MainPage> {

  String _enteredText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Funny mortgage'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                style: Theme.of(context).textTheme.display1,
                decoration: InputDecoration(
                  labelStyle: Theme.of(context).textTheme.display1,
                  labelText: 'Input',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (String text) {
                  setState(() => _enteredText = text);
                },
              ),
              Text("$_enteredText")
            ],
          ),
        ),
      ),
    );
  }
}
