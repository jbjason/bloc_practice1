import 'package:bloc_practice1/getx_structure/app/modules/splash/binding/splash_binding.dart';
import 'package:bloc_practice1/getx_structure/app/modules/splash/views/splash_view.dart';
import 'package:bloc_practice1/getx_structure/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = AppRoutes.SPLASH;

  static final routes = [
    // GetPage(
    //   name: Routes.LANDING_AUTH,
    //   page: () => const LandingAuthView(),
    //   binding: LandingAuthBinding(),
    // ),
    // GetPage(
    //   name: Routes.SIGN_IN,
    //   page: () => const SignInView(),
    //   binding: SignInBinding(),
    // ),
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    // GetPage(
    //   name: Routes.HOME,
    //   page: () => const HomeView(),
    //   binding: HomeBinding(),
    // ),
  ];
}
