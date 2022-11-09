import 'package:flutter/material.dart';
import 'package:official_vbuyy/screens/common/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vbuyy',
      home: Login(),
    );
  }
}
