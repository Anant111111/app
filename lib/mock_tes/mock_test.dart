import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mock_ques.dart';

class MockScreen extends StatefulWidget {
  @override
  _MockScreenState createState() => _MockScreenState();
}

class _MockScreenState extends State<MockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
          actions: [],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text("Mock Test"),
        ),
        body: SafeArea(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (_) => MockQuestion()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("Mock Test ${index + 1}"),
                ),
              );
            },
          ),
        ));
  }
}
