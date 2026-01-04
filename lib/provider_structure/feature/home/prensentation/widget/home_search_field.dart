import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_icon.dart';
import 'package:bloc_practice1/provider_structure/core/util/my_dimens.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 12.w),
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: MyDimens.getShadow),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search food ot restaurant here...",
            hintStyle: Theme.of(context).textTheme.bodySmall,
            suffixIcon: Image.asset(MyIcon.search1, width: 10.w),
          ),
        ),
      ),
    );
  }
}
