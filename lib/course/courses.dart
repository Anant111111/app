import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coursedetail.dart';

class Courses extends StatefulWidget {
  // const Courses({ Key? key }) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  Size size;
  final color = [
    Colors.pink.shade50,
    Colors.blue.shade50,
    Colors.yellow.shade50,
    Colors.purple.shade50,
  ];

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
        backgroundColor: Colors.blue.shade800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text("Home"),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(3.0),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 10,
                          width: 10,
                          child: Icon(Icons.search, color: Colors.white),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    hintText: 'Looking for....',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 0),
              child: Text("Courses"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: size.height * 0.3,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    // physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (_, i) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => CourseDetail()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6.0,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: size.width * 0.75,
                                  color: Colors.blue.shade50,
                                  height: size.height * 0.12,
                                ),
                                Container(
                                  width: size.width * 0.75,
                                  height: size.height * 0.15,
                                  // color: Colors.red,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("History of Arts"),
                                          SizedBox(height: 6),
                                          Text(
                                              "Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempoquip ex ea commodo consequat. "),
                                          SizedBox(height: 6),
                                          Text("Free"),
                                        ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 5),
              child: Text("Video Courses"),
            ),
            SizedBox(
              // height: size.height * 0.2,
              width: size.width * 0.9,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  // shrinkWrap: true,
                  shrinkWrap: true,
                  itemCount: color.length,
                  itemBuilder: (_, i) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: color[i],
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => CourseDetail()));
                        },
                        focusColor: Colors.pink.shade50,
                        hoverColor: Colors.pink.shade50,
                        subtitle: Text("4 hours, 45 min"),
                        title: Text("How to learn Sketch?"),
                        trailing: Container(
                            decoration: new BoxDecoration(
                              // borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.blue, width: 1),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.play_arrow),
                            )),
                        leading: Icon(Icons.account_balance),
                      ),
                    );
                  }),
            )
          ]),
        ],
      ),
    );
  }
}
