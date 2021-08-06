import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  final text;

  const Pages({Key key, this.text}) : super(key: key);
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  Future getData() async {
    await Future.delayed(Duration(seconds: 2));
    return "No data";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: FutureBuilder(
              future: getData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return snapshot.hasData
                    ? Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            child: Column(
                          children: [
                            Image.asset("empty.jpeg"),
                            SizedBox(height: 15),
                            Text(
                                "No Data Available for ${widget.text} due to absence of API support",
                                style: TextStyle(
                                    // color: Colors.black,
                                    fontWeight: FontWeight.bold)),
                            Text("Please try again later")
                          ],
                        )),
                      )
                    : Center(
                        child: Column(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(height: 5),
                          Text("Fetching the Live data....")
                        ],
                      ));
              },
            ),
          ),
        ),
      ),
    );
  }
}
