import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_a_note/feature/home/controller/home_controller.dart';

class CountPage extends StatelessWidget {
  CountPage({super.key});
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Count Page: ${homeController.count}',
        style: TextStyle(fontSize: 32),
      ),
    ));
  }
}
