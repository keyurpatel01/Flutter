import 'package:flutter/material.dart';

class Clicks extends StatefulWidget {
  const Clicks({super.key});

  @override
  State<Clicks> createState() => _ClicksState();
}

class _ClicksState extends State<Clicks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyButton'), backgroundColor: Colors.grey),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                print('text button clicked');
              },
              onLongPress: () {
                print('text button long pressed');
              },
              child: Text('TextButton'),
            ),
            ElevatedButton(
              onPressed: () {
                print('elevated button clicked');
              },
              child: Text('ElevetedButton'),
            ),
            OutlinedButton(
              onPressed: () {
                print('oultlined button clicked');
              },
              child: Text('OUtlinedBUtton'),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print('click on text');
              },
              child: Text('click here', style: TextStyle(fontSize: 25)),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print('click on text  gesture detector');
              },
              child: Text(
                'click here gesture detector',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}