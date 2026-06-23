import 'package:flutter/material.dart';

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  Color containerColor = Colors.white;
  String colorName = 'White';
  void changeColor(Color color, String cName) {
    setState(() {
      containerColor = color;
      colorName = cName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyState'), backgroundColor: Colors.green),
      body: Container(
        color: containerColor,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                changeColor(Colors.yellow, 'Yellow');
              },
              child: Text('Yellow', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                changeColor(Colors.red, 'Red');
              },
              child: Text('Red', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                changeColor(Colors.grey, 'Grey');
              },
              child: Text('Grey', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),
            Text(
              'Container color : ${colorName.toString()} ',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
