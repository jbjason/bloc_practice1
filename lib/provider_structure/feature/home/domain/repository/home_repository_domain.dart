import 'package:bloc_practice1/provider_structure/feature/home/data/model/food_campaign.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/home_banner.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/home_restaurant.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/popular_product.dart';

import '../entities/category_entity.dart';
import 'package:flutter/material.dart';

abstract class HomeRepositoryDomain {
  Future<List<CategoryEntity>> fetchCategories(BuildContext ctx);

  Future<List<HomeBanner>> fetchBanners(BuildContext ctx);

  Future<List<FoodCampaign>> fetchFoodCampaigns(BuildContext ctx);

  Future<PopularProduct?> fetchPopularProduct(BuildContext ctx);

  Future<HomeRestaurant?> fetchHomeRestaurant({
    required int offset,
    required int limit,
    required BuildContext ctx,
  });
}
