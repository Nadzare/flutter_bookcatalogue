import 'package:flutter/material.dart';
import 'about_controller.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  final controller = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tentang Perpustakaan')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.library_books, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              'Perpustakaan Digital Unsoed',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Perpustakaan ini menyediakan berbagai koleksi buku digital yang dapat diakses secara online oleh mahasiswa dan masyarakat umum untuk mendukung literasi dan pembelajaran.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
