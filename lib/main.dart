import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_a_note/feature/home/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Take a note',
      home: HomePage(),
    );
  }
}
