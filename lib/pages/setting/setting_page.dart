import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'App Version',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '1.0.0', // Replace with your app version
              style: TextStyle(fontSize: 16),
            ),
            ListTile(
              leading: Icon(Icons.volume_off),
              title: Text('Silent Mode Settings'),
              onTap: () {
                Get.toNamed('/settings/silent', id: 2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
