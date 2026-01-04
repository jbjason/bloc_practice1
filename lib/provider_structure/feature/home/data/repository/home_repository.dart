import 'package:flutter/material.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/data_sources/home_data_source.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/food_campaign.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/home_banner.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/home_restaurant.dart';
import 'package:bloc_practice1/provider_structure/feature/home/data/model/popular_product.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/category_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/repository/home_repository_domain.dart';

class HomeRepository implements HomeRepositoryDomain {
  final HomeRemoteDataSource remoteDataSource;
  HomeRepository(this.remoteDataSource);

  @override
  Future<List<CategoryEntity>> fetchCategories(BuildContext ctx) async {
    final models = await remoteDataSource.fetchCategories(ctx);
    return models;
  }

  @override
  Future<List<HomeBanner>> fetchBanners(BuildContext ctx) async {
    final models = await remoteDataSource.fetchBanners(ctx);
    return models;
  }

  @override
  Future<List<FoodCampaign>> fetchFoodCampaigns(BuildContext ctx) async {
    final models = await remoteDataSource.fetchFoodCampaigns(ctx);
    return models;
  }

  @override
  Future<PopularProduct?> fetchPopularProduct(BuildContext ctx) async {
    final models = await remoteDataSource.fetchPopularProduct(ctx);
    return models;
  }

  @override
  Future<HomeRestaurant?> fetchHomeRestaurant({
    required int offset,
    required int limit,
    required BuildContext ctx,
  }) async {
    final models = await remoteDataSource.fetchHomeRestaurant(
      offset: offset,
      limit: limit,
      ctx: ctx,
    );
    return models;
  }
}
