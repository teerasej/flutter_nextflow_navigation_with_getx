import 'package:flutter/material.dart';
import 'package:flutter_nextflow_navigation_with_getx/pages/item_catalog/catalog_page.dart';
import 'package:flutter_nextflow_navigation_with_getx/pages/item_catalog/detail_page.dart';
import 'package:flutter_nextflow_navigation_with_getx/pages/setting/setting_page.dart';
import 'package:flutter_nextflow_navigation_with_getx/pages/setting/setting_silent_page.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }

  // For Catalog tab
  Route? onGenerateCatalogRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/catalog':
        return GetPageRoute(
          settings: settings,
          page: () => CatalogPage(),
        );
      // Add your detail route here if needed
      case '/catalog/detail':
        return GetPageRoute(
          settings: settings,
          page: () => DetailPage(),
        );
      default:
        return null;
    }
  }

  // For Settings tab
  Route? onGenerateSettingsRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/settings':
        return GetPageRoute(
          settings: settings,
          page: () => SettingPage(),
        );
      case '/settings/silent':
        return GetPageRoute(
          settings: settings,
          page: () => SettingSilentPage(),
        );
      default:
        return null;
    }
  }
}