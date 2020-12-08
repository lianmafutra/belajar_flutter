import 'package:flutter/material.dart';

// stack posisi menumpuk , seperti fragment (bertumpuk)
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack & align widget'),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              //bg
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.grey,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ))
              ],
            ),
            //text
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "ini adalah Text yang ada dilapisan tengah dari stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
              child: Text("My Button"),
              onPressed: () {

              },
              color: Colors.red,
            ),
            )
            
            //button
          ],
        ),
      ),
    );
  }
}
