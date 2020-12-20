import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class ReportSend extends StatefulWidget {
  @override
  _ReportSendState createState() => _ReportSendState();
}

class _ReportSendState extends State<ReportSend> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Send Report"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.network("https://picsum.photos/250?image=9", fit: BoxFit.fill),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                )),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Content',
                    )),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: DropdownSearch(
                  items: ["Banjir", "Kecelakaan", "Lampu Merah", "Sampah"],
                  label: "Category",
                  mode: Mode.DIALOG,
                  onChanged: print,
                  selectedItem: "Select Category",
                  validator: (String item) {
                    if (item == null)
                      return "Required field";
                    else if (item == "Brazil")
                      return "Invalid item";
                    else
                      return null;
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
