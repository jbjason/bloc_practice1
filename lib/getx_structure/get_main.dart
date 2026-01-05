import 'package:bloc_practice1/getx_structure/app/modules/splash/binding/splash_binding.dart';
import 'package:bloc_practice1/getx_structure/app/routes/app_pages.dart';
import 'package:bloc_practice1/getx_structure/app/routes/app_routes.dart';
import 'package:bloc_practice1/getx_structure/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

GlobalKey<NavigatorState> mainNavigation = GlobalKey();

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final getStorage = GetStorage();
    getStorage.writeIfNull('isLoggedIn', false);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black87,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));

    return ScreenUtilInit(
      designSize: const Size(768, 1024),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Islamic Academy\nManagement System',
          debugShowCheckedModeBanner: false,
          getPages: AppPages.routes,
          navigatorKey: mainNavigation,
          initialBinding: SplashBinding(),
          initialRoute: AppRoutes.SPLASH,
          theme: AppTheme.light(),
        );
      },
    );
  }
}
