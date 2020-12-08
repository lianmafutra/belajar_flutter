import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar flexible Layout"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.green,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5),
                        color: Colors.black,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                          margin: EdgeInsets.all(5),
                        color: Colors.pink,
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.all(5),
                  color: Colors.red,
                )),
            Flexible(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.all(5),
                  color: Colors.amber,
                )),
            Flexible(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.all(5),
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
