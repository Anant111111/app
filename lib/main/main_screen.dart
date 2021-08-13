import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/course/courses.dart';
import 'package:internship/login/join.dart';
import 'package:internship/profile/profle.dart';

import '../home/home.dart';
import '../mock_tes/mock_test.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool s = false;
  PageController controller = PageController(initialPage: 0);
  List<Widget> l = <Widget>[
    Center(child: Home()),
    Center(child: Courses()),
    Center(child: MockScreen()),
    Center(child: Profile()),
  ];
  int _curr = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                label: "MainScreen",
                activeIcon: Icon(Icons.home, color: Colors.blue),
                icon: Icon(Icons.home_outlined, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Courses",
                activeIcon: Icon(Icons.book_online_sharp, color: Colors.blue),
                icon: Icon(Icons.book_online_outlined, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Mock Test",
                activeIcon: Icon(Icons.settings, color: Colors.blue),
                icon: Icon(Icons.settings_outlined, color: Colors.grey)),
            BottomNavigationBarItem(
                label: "Profile",
                activeIcon: Icon(Icons.person, color: Colors.blue),
                icon: Icon(Icons.person_outline_outlined, color: Colors.grey)),
          ],
        ),
        body: l[_curr]);
  }
}
