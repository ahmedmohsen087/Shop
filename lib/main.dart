import 'package:flutter/material.dart';
import 'package:shop/on_bording_screen.dart';
import 'package:shop/thems.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
