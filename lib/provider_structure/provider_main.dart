import 'package:bloc_practice1/provider_structure/config/theme/app_theme.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/data_sources/home_data_source.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/data_sources/test_data_source.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/repository/home_repository.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/repository/test_repository.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/page/home.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/test_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppTheme()),
          ChangeNotifierProvider(
            create: (_) =>
                HomeProvider(HomeRepository(HomeRemoteDataSourceImpl())),
          ),
          ChangeNotifierProvider(
            create: (_) => TestProvider(
              TestRepository(TestRemoteDataSourceImpl()),
            ),
          ),
        ],
        child: Consumer<AppTheme>(
          builder: (context, themeProvider, _) => MaterialApp(
            title: 'Hello Bazar',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light(context),
            darkTheme: AppTheme.dark(context),
            themeMode: themeProvider.themeMode,
            home: Home(),
          ),
        ),
      ),
    );
  }
}
