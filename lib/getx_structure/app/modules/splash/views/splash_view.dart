import 'package:bloc_practice1/getx_structure/app/modules/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Islamic Academy Management System"),
            const SizedBox(height: 30),
            const CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
