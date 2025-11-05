import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final VoidCallback onTap;

  const BookCard({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(author),
        onTap: onTap,
      ),
    );
  }
}
