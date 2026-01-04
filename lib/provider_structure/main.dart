import 'package:bloc_practice1/provider_structure/config/theme/app_theme.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        title: 'Hello Bazar',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(context),
        home: Home(),
      ),
    );
  }
}
