import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomHome extends StatefulWidget {
  final text;

  const BottomHome({Key key, this.text}) : super(key: key);
  @override
  _BottomHomeState createState() => _BottomHomeState();
}

class _BottomHomeState extends State<BottomHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: InkWell(
          onTap: () async {
            if (await canLaunch('https://www.google.com/') != null) {
              await launch('https://www.google.com/');
            }
          },
          child: Container(
            height: 45,
            padding: const EdgeInsets.all(15.0),
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text("Click For Advertisements"),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.grey.shade400,
                        Colors.grey.shade600,
                        Colors.grey.shade900
                      ])),
                  padding: EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      Positioned(
                          right: 1,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "offer.jpeg",
                            ),
                            radius: 60,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Offers...",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "10% Discount in all deals and a credit upto 4000",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 7),
                            RaisedButton(
                                color: Colors.yellow,
                                onPressed: () {},
                                child: Text(
                                  "Join Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(height: 7),
                            Text("T&C apply")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.lightBlue.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                style: TextStyle(
                                    color: Colors.green.shade400,
                                    fontWeight: FontWeight.bold),
                                text: "Cricket Highlights",
                              ),
                              TextSpan(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow.shade900),
                                text: " (LIVE)",
                              )
                            ]),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Bangladesh (Batting)"),
                          Text("199*/4",
                              style: TextStyle(color: Colors.yellow)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Australia (All out)"),
                          Text("210/10", style: TextStyle(color: Colors.yellow))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.grey,
                  ),
                  Text("    In Play   ",
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.green.shade400,
                          fontWeight: FontWeight.bold)),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.lightGreen.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Football Highlights",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Argentina "), Text("3")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Portugal"), Text("4")],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.red.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                style: TextStyle(
                                    // color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                text: "Badminton Highlights",
                              ),
                              TextSpan(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.yellow.shade700),
                                text: " (LIVE)",
                              )
                            ]),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Alex"), Text("4")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("John"), Text("3")],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.lime.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Tennis Highlights",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Michael"), Text("7")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Nadel"), Text("6")],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                // color: Colors.teal.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Cricket Highlights",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Bangladesh (Batting)"),
                          Text("199*/4")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Australia (All out)"), Text("210/10")],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.grey.shade400,
                        Colors.grey.shade600,
                        Colors.grey.shade900
                      ])),
                  padding: EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      Positioned(
                          right: 1,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "offer.jpeg",
                            ),
                            radius: 60,
                          )),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Offers...",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "10% Discount in all deals and a credit upto 4000",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 7),
                            RaisedButton(
                                color: Colors.yellow,
                                onPressed: () {},
                                child: Text(
                                  "Join Now",
                                  style: TextStyle(color: Colors.black),
                                )),
                            SizedBox(height: 7),
                            Text("T&C apply")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ));
  }
}
