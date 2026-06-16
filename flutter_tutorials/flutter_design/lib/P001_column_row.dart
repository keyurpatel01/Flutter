import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column & Row'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        ///row
        height: 300,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('first', style: TextStyle(fontSize: 30)),
            Text('second', style: TextStyle(fontSize: 30)),
            Text('third', style: TextStyle(fontSize: 30)),
            Text('fourth', style: TextStyle(fontSize: 30)),
            Text('fifth', style: TextStyle(fontSize: 30)),
          ],
        ),
      ),

      ///column
      // Container(
      //   height: 700,
      //   color: Colors.blue,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text('first', style: TextStyle(fontSize: 30)),
      //       Text('second', style: TextStyle(fontSize: 30)),
      //       Text('third', style: TextStyle(fontSize: 30)),
      //       Text('fourth', style: TextStyle(fontSize: 30)),
      //       Text('fifth', style: TextStyle(fontSize: 30)),
      //     ],
      //   ),
      // ),
    );
  }
}
