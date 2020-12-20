import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ReportDetail extends StatelessWidget {
  String title, content, createdAt, image;
// constructor
  ReportDetail({Key key, this.title, this.content, this.createdAt, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Report Detail"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                  child: ListView(children: <Widget>[
                Flexible(
                    child: Container(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )),
                Flexible(
                    child: Container(
                  child: Text("Tanggal Lapor : " + createdAt,
                      style: TextStyle(fontSize: 14)),
                )),
                Flexible(
                  child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Material(
                          child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return DetailScreen(img_url: image);
                          }));
                        },
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                image,
                                fit: BoxFit.fill),
                          ),
                        ),
                      ))),
                ),
                Flexible(
                    child: Container(
                        padding: EdgeInsets.only(top: 26),
                        child: Text(content, style: TextStyle(fontSize: 16)))),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {

 final String img_url;
  const DetailScreen({Key key, this.img_url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: PhotoView(
            imageProvider: NetworkImage(img_url),
          ),
        ),
        // onTap: () {
        //   Navigator.pop(context);
        // },
      ),
    );
  }
}
