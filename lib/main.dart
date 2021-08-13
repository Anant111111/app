import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login/join.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryTextTheme: Typography().white,
        // scaffoldBackgroundColor: Colors.grey.shade800,
        primarySwatch: Colors.blue,
        // textTheme: Typography().white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  AnimationController animation;
  Animation<double> _fadeInFadeOut;
  Size size;
  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // animation.reverse();
      } else if (status == AnimationStatus.dismissed) {
        // animation.forward();
      }
    });
    animation.forward();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, CupertinoPageRoute(builder: (context) => Join())));
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Stack(
            children: [
              FadeTransition(
                opacity: _fadeInFadeOut,
                child: Container(
                  margin: EdgeInsets.only(
                      left: size.width * 0.01, bottom: size.height * 0.1),
                  height: size.height * 0.5,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("logo.png"),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
