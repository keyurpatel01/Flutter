import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({super.key});

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
      appBar: AppBar(title: Text('ListTile'), backgroundColor: Colors.green),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade400,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/${images[index]}',
                    ),
                  ),
                  title: Text(
                    '${images[index]}',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('subtitle'),
                  trailing: Icon(Icons.delete),
                ),
              ),
            );
          },
          itemCount: images.length,
        ),
      ),
    );
  }
}
