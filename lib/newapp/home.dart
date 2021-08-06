import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/newapp/join.dart';
import 'package:internship/newapp/pages.dart';

import 'bottom_home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool s = false;
  PageController controller = PageController(initialPage: 0);
  List<Widget> l = <Widget>[
    Center(child: BottomHome()),
    Center(child: Pages(text: "Football")),
    Center(child: Pages(text: "Tennis")),
    Center(child: Pages(text: "Olympics")),
    Center(child: Pages(text: "Hockey")),
    Center(child: Pages(text: "Badminton")),
  ];
  int _curr = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  showsheet(ctx) {
    showBottomSheet(
        context: ctx,
        backgroundColor: Colors.transparent,
        builder: (ctx) {
          return Container(
            margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Colors.grey[500], spreadRadius: 5)
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                    title: Center(
                  child: Text("Are you sure you want to Log Out??",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      child: Text(
                        "Cancel",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 0,
                        color: Colors.red,
                        child: Text('Log Out',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              CupertinoPageRoute(builder: (_) => Join()));
                        })
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curr,
          onTap: (i) {
            setState(() {
              _curr = i;
            });
          },
          backgroundColor: Colors.grey.shade800,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                activeIcon: Icon(Icons.home, color: Colors.blue),
                icon: Icon(Icons.home, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Football",
                activeIcon: Icon(Icons.person, color: Colors.blue),
                icon: Icon(Icons.person, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Tennis",
                activeIcon: Icon(Icons.access_alarm, color: Colors.blue),
                icon: Icon(Icons.access_alarm, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Olympics",
                activeIcon:
                    Icon(Icons.accessibility_rounded, color: Colors.blue),
                icon: Icon(Icons.accessibility_rounded, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Hockey",
                activeIcon: Icon(Icons.add_alert, color: Colors.blue),
                icon: Icon(Icons.add_alert, color: Colors.grey)),
          ],
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
          centerTitle: true,
          actions: [
            Builder(
              builder: (c) {
                return IconButton(
                    icon: Icon(Icons.more_horiz),
                    onPressed: () {
                      showsheet(c);
                    });
              },
            )
          ],
          backgroundColor: Colors.green.shade800,
          title: Row(
            children: [
              Text("     "),
              CircleAvatar(backgroundImage: AssetImage("logo.jpeg")),
              Text(
                "  Bet Bita",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Schyler'),
              ),
              Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ),
        body: l[_curr]);
  }
}
