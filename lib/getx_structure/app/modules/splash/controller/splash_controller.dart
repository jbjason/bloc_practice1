import 'package:bloc_practice1/getx_structure/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _initialized();
  }

  void _initialized() async {
    Future.delayed(Duration(seconds: 1)).then((_) {
      Get.offAllNamed(AppRoutes.HOME);
    });
  }
}
