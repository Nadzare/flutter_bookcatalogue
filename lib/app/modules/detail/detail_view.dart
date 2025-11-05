import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detail_controller.dart';

class DetailView extends StatelessWidget {
  final controller = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    final book = Get.arguments;
    return Scaffold(
      appBar: AppBar(title: Text(book['title'])),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(book['image'], height: 180),
            SizedBox(height: 16),
            Text(book['title'],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('Penulis: ${book['author']}'),
            Text('Genre: ${book['genre']}'),
            SizedBox(height: 16),
            Text(
              'Buku ini membahas konsep mendalam tentang ${book['genre']} yang membantu pembaca memahami dasar dan praktik terbaik di bidang tersebut.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
