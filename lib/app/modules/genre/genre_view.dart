import 'package:flutter/material.dart';
import 'genre_controller.dart';
import 'package:get/get.dart';

class GenreView extends StatelessWidget {
  final controller = Get.put(GenreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Genre Buku')),
      body: ListView.builder(
        itemCount: controller.genres.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.book),
            title: Text(controller.genres[index]),
          );
        },
      ),
    );
  }
}
