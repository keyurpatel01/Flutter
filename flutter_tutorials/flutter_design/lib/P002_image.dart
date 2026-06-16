import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image'), backgroundColor: Colors.green),
      body: Container(
        height: 120,
        color: Colors.yellow,
        child: Row(
          children: [
            Container(
              width: 150,
              color: Colors.grey.shade300,
              child: Image.asset('assets/images/image.png', fit: BoxFit.cover),
            ),
            Container(
              width: 190,
              color: Colors.blue.shade300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Men's harrington", style: TextStyle(fontSize: 17)),
                  Text("Jacket", style: TextStyle(fontSize: 17)),
                  Row(
                    children: [
                      Text("Size - M ", style: TextStyle(fontSize: 15)),
                      SizedBox(width: 10),

                      Text("Color - Black ", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              color: Colors.lime,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("\$148", style: TextStyle(fontSize: 16)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.orangeAccent,
                        child: Icon(Icons.add),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.orangeAccent,
                        child: Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
