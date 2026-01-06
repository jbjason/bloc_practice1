import 'package:bloc_practice1/bloc_structure/core/cubit/counter_cubit.dart';
import 'package:bloc_practice1/bloc_structure/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_structure/theme.dart';

///
/// Provider Structure Main.dart
// import 'package:bloc_practice1/provider_structure/config/theme/app_theme.dart';
// import 'package:bloc_practice1/provider_structure/feature/home/data/data_sources/home_data_source.dart';
// import 'package:bloc_practice1/provider_structure/feature/home/data/repository/home_repository.dart';
// import 'package:bloc_practice1/provider_structure/feature/home/prensentation/page/home.dart';
// import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const HomeScreen(),
      ),
    );
  }
}
