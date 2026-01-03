import 'package:bloc_practice1/getx_structure/app/modules/auth/controller/auth_controller.dart';
import 'package:bloc_practice1/getx_structure/app/modules/auth/repository/auth_repository.dart';
import 'package:get/get.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl());
    Get.lazyPut(() => AuthController());
  }
}
