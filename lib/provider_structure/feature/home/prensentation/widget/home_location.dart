import 'package:bloc_practice1/provider_structure/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_color.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_icon.dart';
import 'package:provider/provider.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: 12.w,
        right: 12.w,
        top: 13.h,
        bottom: 5.h,
      ),
      child: Row(
        spacing: 10.w,
        children: [
          // home icon
          Image.asset(MyIcon.home2, color: MyColor.gray400, width: 11.sp),
          // location text
          Expanded(
            child: Text(
              "Extension Pallabi Mirpur, Dhaka",
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: MyColor.gray400),
            ),
          ),
          // theme icon
          //Image.asset(MyIcon.notification, width: 11.sp),
          Consumer<AppTheme>(
            builder: (context, themeProvider, _) => Switch(
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (_) => themeProvider.toggleTheme(),
            ),
          ),
        ],
      ),
    );
  }
}
