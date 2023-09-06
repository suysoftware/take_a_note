import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_a_note/feature/count/count_page.dart';
import 'package:take_a_note/feature/home/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: HomeController(),
        builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Page: ${homeController.count}',
                style: TextStyle(fontSize: 32),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      homeController.setCount(homeController.count + 1);
                    },
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      homeController.setCount(homeController.count - 1);
                    },
                    child: Text(
                      '-',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => CountPage());
                },
                child: Text(
                  'Count Page',
                  style: TextStyle(fontSize: 32),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
