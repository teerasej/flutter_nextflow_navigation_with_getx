import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: Center(
        child: Text('Details of Product'),
      ),
    );
  }
}