import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       appBar: AppBar(title: Text("Akun"),),
        body: SafeArea(
      child: new Container(
          color: Colors.white,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Akun'),
                ]),
          )),
    ));
  }
}