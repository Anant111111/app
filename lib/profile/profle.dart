import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'certificate.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        actions: [],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/user.jpeg"),
              radius: size.height * 0.21,
            ),
            Text(
              "Alex Clerk",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                  """Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
C/O https://placeholder.com/text/lorem-ipsum/ """),
            ),
            SizedBox(height: size.height * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Certificate()));
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text("Result"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.pink.shade50,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => Certificate()));
              },
              child: Container(
                height: 50,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Text("Certificate"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue.shade50,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: 50,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text("Resume"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow.shade50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
