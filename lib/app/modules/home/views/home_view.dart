import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ordotest/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Made by',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'INDRAFANI',
              style: TextStyle(fontSize: 35),
            ),
            SizedBox(
              height: 40,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: MediaQuery.of(context).size.width / 1.7,
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Test 1",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => Get.toNamed(Routes.TEST1),
              splashColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: MediaQuery.of(context).size.width / 1.7,
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Test 2",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => Get.toNamed(Routes.TEST2),
              splashColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              height: 50.0,
              minWidth: MediaQuery.of(context).size.width / 1.7,
              color: Colors.black,
              textColor: Colors.white,
              child: new Text(
                "Test 3",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () => Get.toNamed(Routes.TEST3),
              splashColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
