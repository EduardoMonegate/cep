import 'package:flutter/material.dart';
import 'app/core/inject/inject.dart';
import 'app/core/routes/app_pages.dart';
import 'app/core/routes/app_routes.dart';



void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoutes.splash,
         routes: AppPages.pages,
    );
  }
}

