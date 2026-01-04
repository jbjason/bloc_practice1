import 'package:flutter/material.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/category_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/food_campaign_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/home_banner_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/home_restaurant_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/popular_product_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/repository/home_repository_domain.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepositoryDomain _repository;
  HomeProvider(this._repository);

  final List<CategoryEntity> _categoryList = [];
  final List<HomeBannerEntity> _bannerList = [];
  final List<FoodCampaignEntity> _foodCampaignList = [];
  PopularProductEntity? _popularProduct;
  HomeRestaurantEntity? _homeRestaurant;

  List<CategoryEntity> get categoryList => List.unmodifiable(_categoryList);
  List<HomeBannerEntity> get bannerList => List.unmodifiable(_bannerList);
  List<FoodCampaignEntity> get foodCampaignList =>
      List.unmodifiable(_foodCampaignList);
  PopularProductEntity? get popularItem => _popularProduct;
  HomeRestaurantEntity? get homeRestaurant => _homeRestaurant;

  bool _isLoadingCategory = false;
  bool _isLoadingBanners = false;
  bool _isLoadingCampaign = false;
  bool _isLoadingPopular = false;
  bool _isLoadingRestaurant = false;

  bool get isLoadingCategory => _isLoadingCategory;
  bool get isLoadingBanners => _isLoadingBanners;
  bool get isLoadingCampaign => _isLoadingCampaign;
  bool get isLoadingPopular => _isLoadingPopular;
  bool get isLoadingRestaurant => _isLoadingRestaurant;

  Future<void> fetchCategories(BuildContext ctx) async {
    _isLoadingCategory = true;
    notifyListeners();
    try {
      final categories = await _repository.fetchCategories(ctx);
      _categoryList
        ..clear()
        ..addAll(categories);
    } catch (e) {
      debugPrint('Error Parsing categories: $e');
    } finally {
      _isLoadingCategory = false;
      notifyListeners();
    }
  }

  Future<void> fetchBanners(BuildContext ctx) async {
    _isLoadingBanners = true;
    notifyListeners();
    try {
      final banners = await _repository.fetchBanners(ctx);
      _bannerList
        ..clear()
        ..addAll(banners);
    } catch (e) {
      debugPrint('Error Parsing Banners: $e');
    } finally {
      _isLoadingBanners = false;
      notifyListeners();
    }
  }

  Future<void> fetchFoodCampaigns(BuildContext ctx) async {
    _isLoadingCampaign = true;
    notifyListeners();
    try {
      final foodCampaignList = await _repository.fetchFoodCampaigns(ctx);
      _foodCampaignList
        ..clear()
        ..addAll(foodCampaignList);
    } catch (e) {
      debugPrint('Error Parsing Food Campaigns: $e');
    } finally {
      _isLoadingCampaign = false;
      notifyListeners();
    }
  }

  Future<void> fetchPopularProduct(BuildContext ctx) async {
    _isLoadingPopular = true;
    notifyListeners();
    try {
      final popularProduct = await _repository.fetchPopularProduct(ctx);
      _popularProduct = popularProduct;
    } catch (e) {
      debugPrint('Error Parsing Popular Product: $e');
    } finally {
      _isLoadingPopular = false;
      notifyListeners();
    }
  }

  Future<void> fetchHomeRestaurant({
    int offset = 1,
    int limit = 10,
    required BuildContext ctx,
  }) async {
    _isLoadingRestaurant = true;
    notifyListeners();
    try {
      final homeRestaurant = await _repository.fetchHomeRestaurant(
        offset: offset,
        limit: limit,
        ctx: ctx,
      );
      _homeRestaurant = homeRestaurant;
    } catch (e) {
      debugPrint('Error Parsing Home Restaturant: $e');
    } finally {
      _isLoadingRestaurant = false;
      notifyListeners();
    }
  }
}
