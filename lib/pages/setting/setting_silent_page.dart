import 'package:flutter/material.dart';

class SettingSilentPage extends StatelessWidget {
  const SettingSilentPage({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silent Mode Settings'),
      ),
      body: Text('Silent is not available.'),
    );
  }
}
