import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'a.jpg',
      'b.jpg',
      'c.jpg',
      'd.jpg',
      'e.jpg',
      'f.jpg',
      'g.jpg',
      'h.jpg',
      'i.jpg',
      'j.jpg',
      'k.jpg',
      'l.jpg',
      'chair.jpeg',
      'mobile.jpeg',
      'shirt.jpeg',
      'shoes.jpeg',
      'table.jpeg',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('ListView'), backgroundColor: Colors.green),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/${images[index]}'),
              ),
            );
          },
          itemCount: images.length,
        ),
      ),
    );
  }
}
