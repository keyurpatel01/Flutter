import 'package:flutter/material.dart';
import 'package:flutter_design/P008_clicked.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Clicks(),
      // Scaffold(
      //   appBar: AppBar(title: Text('MyApp'), backgroundColor: Colors.green),
      //   body: Center(
      //     child: Text(
      //       'Hello Flutter',
      //       style: TextStyle(
      //         fontSize: 25,
      //         color: Colors.white,
      //         backgroundColor: Colors.blue,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
