import 'package:flutter/material.dart';

class MyDecoration extends StatelessWidget {
  const MyDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decoration'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          // color: Colors.grey,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey.shade800,width: 3),
            boxShadow: [
              BoxShadow(color: Colors.red,blurRadius: 30,spreadRadius: 10),
            ]
          ),
        ),
      ),
    );
  }
}