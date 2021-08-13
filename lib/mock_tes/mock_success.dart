import 'package:flutter/material.dart';

class MockSuccess extends StatefulWidget {
  @override
  _MockSuccessState createState() => _MockSuccessState();
}

class _MockSuccessState extends State<MockSuccess> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        centerTitle: true,
        actions: [],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text("Mock Test"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            CircleAvatar(
              radius: size.height * 0.19,
              backgroundImage: AssetImage("assets/win.jpg"),
            ),
            SizedBox(height: size.height * 0.02),
            Text("20",
                style: TextStyle(
                    fontSize: size.height * 0.07, fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.02),
            Text("Congratulations!! You passed the mock test",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.height * 0.025,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.05),
            Text("Your test boost your interest for study",
                style: TextStyle(
                    fontSize: size.height * 0.02, fontWeight: FontWeight.w600)),
            SizedBox(height: size.height * 0.05),

            // SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: size.width * 0.3, height: 1, color: Colors.black),
                Text("Share",
                    style: TextStyle(
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.w400)),
                Container(
                    width: size.width * 0.3, height: 1, color: Colors.black)
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/fb.png",
                    height: size.height * 0.05,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/google.png",
                    height: size.height * 0.05,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/wa.png",
                    height: size.height * 0.05,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/linkedin.png",
                    height: size.height * 0.05,
                  ),
                ),
              ),
            ])
          ]),
        ),
      ),
    );
  }
}
