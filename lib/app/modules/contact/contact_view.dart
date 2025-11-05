import 'package:flutter/material.dart';
import 'contact_controller.dart';
import 'package:get/get.dart';

class ContactView extends StatelessWidget {
  final controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kontak')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(Icons.contact_mail, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text('📧 Email: perpustakaan@unsoed.ac.id'),
            Text('☎️ Telepon: (0281) 123456'),
            SizedBox(height: 20),
            Text(
              'Hubungi kami untuk informasi lebih lanjut mengenai koleksi buku digital dan layanan perpustakaan.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
