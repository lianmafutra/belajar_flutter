import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello world"),
        ),
        body: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 300,
              height: 300,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Saya sedang melatih kemampuan flutter saya",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              )),
        ),
      ),
    );
  }
}
