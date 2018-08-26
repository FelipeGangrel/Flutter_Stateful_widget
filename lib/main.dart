import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new AwesomeButton(),
  ));
}

class AwesomeButton extends StatefulWidget {
  // sobreescrevendo o método createState para
  // que o mesmo retorne uma instancia de nossa
  // classe AwesomeButtonState
  @override
  AwesomeButtonState createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton> {
  int counter = 0;
  List<String> strings = ["Flutter", "É", "Incrível", "Concorda", "Comigo?"];
  String currentString = "";

  onPressed() {
    setState(() {
      currentString = strings[counter];
      counter = counter < strings.length - 1 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        color: Colors.blue[700],
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "$currentString",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(20.0),
              ),
              new RaisedButton(
                child: new Text(
                  "TOQUE AQUI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                color: Colors.green[300],
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
