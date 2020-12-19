import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.account_box, "account box"),
               buildCard(Icons.access_alarm,"Alarm"),
                buildCard(Icons.account_balance, "Account balance")
            ],
          ),
        ),
      ),
    );
  }


// dibuat dengan extract method untuk mempermudah ketika dipanggil/dipakai ulang,
//dengan mengirimkan paramater, sama seperti function/method berisi paramater dan return data . 
  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row( 
        children: <Widget>[
          Container(margin: EdgeInsets.all(10), child: Icon(iconData, color: Colors.amber,)),
          Text(text)
        ],
      ),
    );
  }
}
