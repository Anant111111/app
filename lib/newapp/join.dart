import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/newapp/login.dart';

class Join extends StatefulWidget {
  @override
  _JoinState createState() => _JoinState();
}

class _JoinState extends State<Join> {
  bool s = false;
  double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
      appBar: AppBar(
        actions: [
          // Icon(Icons.save_alt_outlined),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.green.shade800,
        title: Container(
          // color: Colors.red,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundImage: AssetImage("logo.jpeg")),
              Text(
                "  Bet Bita",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Schyler'),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade500, width: 0.7)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.shade500, width: 0.7)),
                      hintText: "Your country")),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                      height: 1,
                      width: width * 0.14,
                      color: Colors.grey.shade600),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey.shade600),
                        children: [
                          TextSpan(text: " "),
                          WidgetSpan(
                              child: Icon(Icons.person_outline,
                                  size: 17, color: Colors.grey.shade600)),
                          TextSpan(text: " Personal Information ")
                        ]),
                  ),
                  Container(
                      height: 1,
                      width: width * 0.14,
                      color: Colors.grey.shade600),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "First Name")),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "Last Name")),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "Email Address")),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
                  keyboardType: TextInputType.phone,
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
                      hintText: "Mobile Number")),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                      height: 1,
                      width: width * 0.14,
                      color: Colors.grey.shade600),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey.shade600),
                        children: [
                          TextSpan(text: " "),
                          WidgetSpan(
                              child: Icon(Icons.home_outlined,
                                  size: 17, color: Colors.grey.shade600)),
                          TextSpan(text: " Address ")
                        ]),
                  ),
                  Container(
                      height: 1,
                      width: width * 0.14,
                      color: Colors.grey.shade600),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "Address")),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "Town/City")),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "State")),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                      height: 1,
                      width: width * 0.14,
                      color: Colors.grey.shade600),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.grey.shade600),
                        children: [
                          TextSpan(text: " "),
                          WidgetSpan(
                              child: Icon(Icons.person_add_alt_1_outlined,
                                  size: 17, color: Colors.grey.shade600)),
                          TextSpan(text: " Account Information ")
                        ]),
                  ),
                  Container(
                      height: 1,
                      width: width * 0.14,
                      color: Colors.grey.shade600),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                  style: TextStyle(color: Colors.black),
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
                      hintText: "Username")),
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
              CheckboxListTile(
                title: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.grey.shade600),
                      children: [
                        TextSpan(
                            text:
                                "I am atleast 18 years old and I have read, accept and agree to the"),
                        TextSpan(
                            style: TextStyle(color: Colors.blue),
                            text:
                                " Terms & Conditions, Rules, Privacy Policy. "),
                        TextSpan(text: " and want to proceed ")
                      ]),
                ),

                value: s,
                onChanged: (newValue) {
                  setState(() {
                    s = !s;
                    // checkedValue = newValue;
                  });
                },
                controlAffinity:
                    ListTileControlAffinity.leading, //  <-- leading Checkbox
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                width: double.infinity,
                child: RaisedButton(
                  elevation: 8.0,
                  onPressed: () => Navigator.push(
                      context, CupertinoPageRoute(builder: (_) => Login())),
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue,
                  child: Text(
                    'JOIN NOW',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.9,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context, CupertinoPageRoute(builder: (_) => Login()));
                  },
                  child: Text(
                    "Have an account??? LOGIN",
                    style: TextStyle(color: Colors.grey.shade600),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
