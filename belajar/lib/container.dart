import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.red[400], 
          margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
           padding: EdgeInsets.only(bottom: 20, top: 20) ,  
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                        Colors.amber,
                        Colors.blue
                  ]
              )),
            ),

        ),
      ),
    );
  }
}
