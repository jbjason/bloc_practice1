import 'package:bloc_practice1/provider_structure/core/base/base_client.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_api_url.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/category.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/food_campaign.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/home_banner.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/home_restaurant.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/popular_product.dart';
import 'package:flutter/material.dart';

abstract class HomeRemoteDataSource {
  Future<List<Category>> fetchCategories(BuildContext ctx);
  Future<List<HomeBanner>> fetchBanners(BuildContext ctx);
  Future<List<FoodCampaign>> fetchFoodCampaigns(BuildContext ctx);
  Future<PopularProduct?> fetchPopularProduct(BuildContext ctx);
  Future<HomeRestaurant?> fetchHomeRestaurant({
    required int offset,
    required int limit,
    required BuildContext ctx,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<List<Category>> fetchCategories(BuildContext ctx) async {
    final result = await BaseClient.getData(
      endPoint: MyApiUrl.category,
      ctx: ctx,
    );
    if (result == null) return [];
    return (result as List).map<Category>((e) => Category.fromJson(e)).toList();
  }

  @override
  Future<List<HomeBanner>> fetchBanners(BuildContext ctx) async {
    final result = await BaseClient.getData(
      endPoint: MyApiUrl.banner,
      ctx: ctx,
    );
    if (result == null) return [];
    return (result['banners'] as List)
        .map<HomeBanner>((e) => HomeBanner.fromJson(e))
        .toList();
  }

  @override
  Future<List<FoodCampaign>> fetchFoodCampaigns(BuildContext ctx) async {
    final result = await BaseClient.getData(
      endPoint: MyApiUrl.foodCampaign,
      ctx: ctx,
    );
    if (result == null) return [];
    return (result as List)
        .map<FoodCampaign>((e) => FoodCampaign.fromJson(e))
        .toList();
  }

  @override
  Future<PopularProduct?> fetchPopularProduct(BuildContext ctx) async {
    final result = await BaseClient.getData(
      endPoint: MyApiUrl.popularProduct,
      ctx: ctx,
    );
    if (result == null) return null;
    return PopularProduct.fromJson(result);
  }

  @override
  Future<HomeRestaurant?> fetchHomeRestaurant({
    required int offset,
    required int limit,
    required BuildContext ctx,
  }) async {
    final result = await BaseClient.getData(
      endPoint: MyApiUrl.restaurants,
      parameters: {"offset": offset, "limit": limit},
      ctx: ctx,
    );
    if (result == null) return null;
    return HomeRestaurant.fromJson(result);
  }
}
