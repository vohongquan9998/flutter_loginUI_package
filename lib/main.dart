import 'package:flutter/material.dart';
import 'package:flutter_login_package/src/menupage.dart';
import 'package:flutter_login_package/src/loginWidget_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}
