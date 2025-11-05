import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:h1d023014_katalogbuku/app/routes/app_pages.dart';

void main() {
  testWidgets('App starts properly', (WidgetTester tester) async {
    await tester.pumpWidget(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katalog Buku Digital',
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
    ));

    expect(find.text('Katalog Buku Digital'), findsOneWidget);
  });
}
