import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  final text;
  const Notifications({Key key, this.text}) : super(key: key);
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  child: Column(
                children: [
                  Image.asset("empty.jpeg"),
                  SizedBox(height: 15),
                  Text("No Data Available for ${widget.text}",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                  Text(
                      "We will soon be coming with order related details and great deals")
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
