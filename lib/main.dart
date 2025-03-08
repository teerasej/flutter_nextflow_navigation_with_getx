import 'package:flutter/material.dart';
import 'package:flutter_nextflow_navigation_with_getx/main_screen.dart';
import 'package:flutter_nextflow_navigation_with_getx/pages/item_catalog/detail_page.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nextflow Flutter Nav',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: false,
      ),
      initialRoute: '/main',
      getPages: [
        GetPage(name: '/main', page: () => MainScreen()),
      ],
    );
  }
}
