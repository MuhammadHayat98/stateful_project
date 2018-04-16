import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new AddButton()
    )

  );
}

class AddButton extends StatefulWidget {
  @override
  AddButtonState createState() => new AddButtonState();
}

class AddButtonState extends State<AddButton> {
  int counter = 0;
  List<String> strings = ["this", "is", "a", "test"];
  String displayedString = "";
  void add() {
    setState(() {
          displayedString = strings[counter];
          counter = counter < 3 ? counter + 1  : 0;
        });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("To do list"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(this.displayedString),
              new Padding(padding: new EdgeInsets.all(10.0),),
              new RaisedButton(
                child: new Text("add"),
                color: Colors.lightBlue,
                onPressed: add,
              )
            ],
          ),
        ),
      ),
    );
  }
}