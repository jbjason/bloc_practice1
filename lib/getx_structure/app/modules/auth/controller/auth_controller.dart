import 'package:bloc_practice1/getx_structure/app/modules/auth/repository/auth_repository.dart';
import 'package:bloc_practice1/getx_structure/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final AuthRepository _authRepo = Get.find<AuthRepository>();

  RxBool isLoading = false.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Enter email';
    if (!GetUtils.isEmail(value)) return 'Enter valid email';
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Enter password';
    if (value.length < 6) return 'Password too short';
    return null;
  }

  Future<void> login() async {
    if (validateEmail(email.value) != null ||
        validatePassword(password.value) != null) {
      Get.snackbar('Error', 'Please fix errors');
      return;
    }
    try {
      isLoading(true);
      final user = await _authRepo.login(email.value, password.value);
      isLoading(false);

      if (user != null) {
        Get.offNamed(AppRoutes.HOME); // Navigate to home
      } else {
        Get.snackbar('Error', 'Invalid credentials');
      }
    } catch (e) {
      isLoading(false);
      Get.snackbar('Error', e.toString());
    }
  }
}
