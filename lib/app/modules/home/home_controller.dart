import 'package:get/get.dart';

class HomeController extends GetxController {
  var books = [
    {
      'title': 'Flutter for Beginners',
      'author': 'John Doe',
      'image': 'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
      'genre': 'Pemrograman',
    },
    {
      'title': 'Dart Deep Dive',
      'author': 'Jane Smith',
      'image': 'https://dart.dev/assets/shared/dart-logo-for-shares.png?2',
      'genre': 'Bahasa Pemrograman',
    },
    {
      'title': 'Clean Code',
      'author': 'Robert C. Martin',
      'image': 'https://m.media-amazon.com/images/I/41xShlnTZTL._SX374_BO1,204,203,200_.jpg',
      'genre': 'Software Engineering',
    },
  ].obs;
}
