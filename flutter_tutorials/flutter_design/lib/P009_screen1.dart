import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_design/P010_screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Screen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue.shade400,
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              'AppLogo',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
