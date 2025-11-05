import 'package:get/get.dart';
import '../modules/home/home_view.dart';
import '../modules/detail/detail_view.dart';
import '../modules/genre/genre_view.dart';
import '../modules/about/about_view.dart';
import '../modules/contact/contact_view.dart';

class AppRoutes {
  static const home = '/';
  static const detail = '/detail';
  static const genre = '/genre';
  static const about = '/about';
  static const contact = '/contact';
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => HomeView()),
    GetPage(name: AppRoutes.detail, page: () => DetailView()),
    GetPage(name: AppRoutes.genre, page: () => GenreView()),
    GetPage(name: AppRoutes.about, page: () => AboutView()),
    GetPage(name: AppRoutes.contact, page: () => ContactView()),
  ];
}
