import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship/home/home.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';


class Otp extends StatefulWidget {
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  String text = '';
  Size size;

  void _onKeyboardTap(String value) {
    setState(() {
      text = text + value;
      if (text.length == 6) {
        Navigator.push(context, CupertinoPageRoute(builder: (_) => Home()));
      }
    });
  }

  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Center(
            child: Text(
          text[position],
          style: TextStyle(color: Colors.black),
        )),
      );
    } catch (e) {
      return Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 0),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.07,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Enter the 6-digit code sent to",
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "+91 94344 85932",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    otpNumberWidget(0),
                    otpNumberWidget(1),
                    otpNumberWidget(2),
                    otpNumberWidget(3),
                    otpNumberWidget(4),
                    otpNumberWidget(5),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Didn't receive it?"),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("REQUEST A NEW CODE",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade900)),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("CHANGE MOBILE NUMBER",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade900)),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("EMAIL SIGN-UP",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade900)),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                // Expanded(child: SizedBox()),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: NumericKeyboard(
                    onKeyboardTap: _onKeyboardTap,
                    textColor: Colors.black,
                    rightIcon: Icon(
                      Icons.backspace,
                      color: Colors.grey,
                    ),
                    rightButtonFn: () {
                      setState(() {
                        text = text.substring(0, text.length - 1);
                      });
                    },
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
