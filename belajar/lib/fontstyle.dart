import 'package:flutter/material.dart';

//fontstyle : menambah style font 
// buat folder fonts di direktori root project
//masukan font kedalam folder tersebut
//setting daftarkan font di pubspec.yaml

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
          appBar: AppBar(
          title: Text("Font Style"),
        ),
        body: Center(
          child: Text("biuku", 
            style: TextStyle(
              fontFamily: "Warmesty", 
              fontStyle: FontStyle.italic,
              fontSize: 20),),
          ),
       ),
    );
  }
}