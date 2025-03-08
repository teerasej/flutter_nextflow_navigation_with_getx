import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Catalog'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Product $index'),
            subtitle: Text('Description of Product $index'),
            onTap: () {
              Get.toNamed('/catalog/detail', id: 1);
            },
          );
        },
      ),
    );
  }
}

