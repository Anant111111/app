import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool s = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 5,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xFF6CA8F1),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      height: 60.0,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 14.0),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                            color: Colors.white54,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // TextFormField(
                //     style: TextStyle(color: Colors.black),
                //     decoration: InputDecoration(
                //         filled: true,
                //         fillColor: Colors.white,
                //         hintStyle: TextStyle(color: Colors.grey),
                //         contentPadding: EdgeInsets.all(8),
                //         enabledBorder: OutlineInputBorder(
                //             borderSide: BorderSide(
                //                 color: Colors.grey.shade500, width: 0.7)),
                //         focusedBorder: OutlineInputBorder(
                //             borderSide: BorderSide(
                //                 color: Colors.grey.shade500, width: 0.7)),
                //         hintText: "Username")),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                    style: TextStyle(color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.7)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade500, width: 0.7)),
                        hintText: "Password")),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 8.0,
                    onPressed: () => Navigator.push(
                        context, CupertinoPageRoute(builder: (_) => Home())),
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.blue,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
