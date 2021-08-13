import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/course/coursedetail.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          backgroundColor: Colors.blue.shade900,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text("Home"),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text("Hi! Parsley", style: TextStyle(fontSize: 35)),
              )),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        "What would you like to learn today? Search below",
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
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
              Container(
                // color: Colors.blue,
                height: size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.shade100,
                                blurRadius: 10.0,
                                offset: Offset(1, 1),
                              ),
                            ],
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink.shade100,
                                blurRadius: 10.0,
                                offset: Offset(1, 1),
                              ),
                            ],
                            color: Colors.pink.shade100,
                            // color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(14)),
                      ),
                    ),
                    SizedBox(width: 20),
                    Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.orange.shade100,
                                blurRadius: 10.0,
                                offset: Offset(1, 1),
                              ),
                            ],
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.circular(14)),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 50,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 5.0),
                    child: Text("Last Seen"),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ],
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
                          subtitle: Text("4 hours, 45 min"),
                          title: Text("How to learn Sketch?"),
                          trailing: Container(
                              decoration: new BoxDecoration(
                                // borderRadius: BorderRadius.circular(18),
                                border:
                                    Border.all(color: Colors.blue, width: 1),
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
            ],
          ),
        ));
  }
}
