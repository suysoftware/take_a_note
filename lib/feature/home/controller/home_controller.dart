import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //observer - gozlemleyici
  // var count = 0.obs;
  // increment() => count++;

  int count = 0;
  String name  = 'ahmet';

  void setCount(int value) {
    count = value;
    update();
    if (count > 10) {
      Get.snackbar(
        'hey',
        count.toString(),
      );
    }
  }
}





