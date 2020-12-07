import 'package:flutter/material.dart';

//anonimus method adalah method yang tidak mempunyai nama
// kapan kita menggunakannya ?kita hanya akan memanggil method tersebut sekali saja

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('anonymous method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                  child: Text('Tekan Saya'),
                  onPressed: () { // contoh anonimus method
                    setState(() {
                      message = "Tombol sudah ditekan";
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
