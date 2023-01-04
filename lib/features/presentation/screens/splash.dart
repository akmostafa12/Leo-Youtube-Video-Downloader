import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class SPLASH extends StatefulWidget {
  const SPLASH({Key? key}) : super(key: key);

  @override
  State<SPLASH> createState() => _SPLASHState();
}

class _SPLASHState extends State<SPLASH> {
  @override
  void initState() {
    const splash = Duration(seconds: 3);
    Timer(splash, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => const HOME()),
        (Route<dynamic> route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff151517), Color(0xff3A4045)])),
          child: Center(
              child: Image.asset(
            'assets/splash.png',
            height: 100,
            color: Colors.white,
          ))),
    );
  }
}
