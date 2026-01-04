import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_banners.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_categories.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_food_campaign.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_location.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_popular_foods.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_restaturant.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/widget/home_search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 7.h,
            children: [
              // location & icons
              HomeLocation(),
              // searchBox
              HomeSearchField(),
              // banners
              HomeBanners(),
              // categories
              HomeCategories(),
              // popular foods
              HomePopularFoods(),
              // food campaign
              HomeFoodCampaign(),
              // restaturant
              HomeRestaturant(),
            ],
          ),
        ),
      ),
    );
  }
}
