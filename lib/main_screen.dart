import 'package:flutter/material.dart';
import 'package:flutter_nextflow_navigation_with_getx/controllers/nav/navigation_controller.dart';
import 'package:get/get.dart';
class MainScreen extends StatelessWidget {

  final NavigationController navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return IndexedStack(
          index: navController.currentIndex.value,
          children: [
            Navigator(
              key: Get.nestedKey(1),
              initialRoute: '/catalog',
              onGenerateRoute: navController.onGenerateCatalogRoute,
            ),
            Navigator(
              key: Get.nestedKey(2),
              initialRoute: '/settings',
              onGenerateRoute: navController.onGenerateSettingsRoute,
            ),
          ],
        );
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: navController.currentIndex.value,
          onTap: navController.changePage,
        ),
      ),
    );
  }
}