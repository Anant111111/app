import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/login/login.dart';

import 'otp.dart';

class Join extends StatefulWidget {
  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
  bool s = false;
  double width;
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: size.width * 0.01, top: size.height * 0.01),
                    height: size.height * 0.1,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("logo.png"),
                    )),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Let's Get started and join our classes and course for highly skill",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                       Container(
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
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.grey,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (_) => Otp()));
                                },
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  child: Icon(Icons.forward_outlined,
                                      color: Colors.white),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ),
                            hintText: 'Enter Mobile No.',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    height: size.height * 0.3,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/child.jpg"),
                    )),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                      child: Column(
                        children: [
                          SizedBox(height: size.width * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("assets/fb.png",
                                  height: size.width * 0.13,
                                  width: size.width * 0.13),
                              Image.asset("assets/google.png",
                                  height: size.width * 0.13,
                                  width: size.width * 0.13),
                              Image.asset("assets/linkedin.png",
                                  height: size.width * 0.13,
                                  width: size.width * 0.13),
                            ],
                          ),
                          SizedBox(height: size.width * 0.03),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("© 2021 Copyright Certbox"),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(18),
                              topRight: Radius.circular(18)))),
                  // Container(
                  //   padding: EdgeInsets.symmetric(vertical: 25.0),
                  //   width: double.infinity,
                  //   child: RaisedButton(
                  //     elevation: 8.0,
                  //     onPressed: () => Navigator.push(
                  //         context, CupertinoPageRoute(builder: (_) => Login())),
                  //     padding: EdgeInsets.all(15.0),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(30.0),
                  //     ),
                  //     color: Colors.blue,
                  //     child: Text(
                  //       'JOIN NOW',
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         letterSpacing: 1.9,
                  //         fontSize: 18.0,
                  //         fontWeight: FontWeight.bold,
                  //         fontFamily: 'OpenSans',
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
