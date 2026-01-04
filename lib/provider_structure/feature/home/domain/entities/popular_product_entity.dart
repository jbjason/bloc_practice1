// popular_product_entity.dart
// ignore_for_file: depend_on_referenced_packages

import 'package:meta/meta.dart';

@immutable
class PopularProductEntity {
  final int totalSize;
  final dynamic limit;
  final dynamic offset;
  final List<ProductEntity> products;

  const PopularProductEntity({
    required this.totalSize,
    required this.limit,
    required this.offset,
    required this.products,
  });
}

@immutable
class ProductEntity {
  final int id;
  final String name;
  final String description;
  final String image;
  final int categoryId;
  final List<CategoryIdEntity> categoryIds;
  final List<VariationEntity> variations;
  final List<AddOnEntity> addOns;
  final int price;
  final int tax;
  final String taxType;
  final int discount;
  final String discountType;
  final String availableTimeStarts;
  final String availableTimeEnds;
  final int veg;
  final int status;
  final int restaurantId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int orderCount;
  final double avgRating;
  final int ratingCount;
  final int recommended;
  final String slug;
  final dynamic maximumCartQuantity;
  final int isHalal;
  final int itemStock;
  final int sellCount;
  final String stockType;
  final int tempAvailable;
  final int open;
  final int reviewsCount;
  final String restaurantName;
  final int restaurantStatus;
  final int restaurantDiscount;
  final dynamic restaurantOpeningTime;
  final dynamic restaurantClosingTime;
  final bool scheduleOrder;
  final int minDeliveryTime;
  final int maxDeliveryTime;
  final int freeDelivery;
  final int halalTagStatus;
  final List<String> nutritionsName;
  final List<String> allergiesName;
  final List<CuisineEntity> cuisines;
  final List<dynamic> taxData;
  final String imageFullUrl;
  final List<NutritionEntity> nutritions;
  final List<AllergyEntity> allergies;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.categoryId,
    required this.categoryIds,
    required this.variations,
    required this.addOns,
    required this.price,
    required this.tax,
    required this.taxType,
    required this.discount,
    required this.discountType,
    required this.availableTimeStarts,
    required this.availableTimeEnds,
    required this.veg,
    required this.status,
    required this.restaurantId,
    required this.createdAt,
    required this.updatedAt,
    required this.orderCount,
    required this.avgRating,
    required this.ratingCount,
    required this.recommended,
    required this.slug,
    required this.maximumCartQuantity,
    required this.isHalal,
    required this.itemStock,
    required this.sellCount,
    required this.stockType,
    required this.tempAvailable,
    required this.open,
    required this.reviewsCount,
    required this.restaurantName,
    required this.restaurantStatus,
    required this.restaurantDiscount,
    required this.restaurantOpeningTime,
    required this.restaurantClosingTime,
    required this.scheduleOrder,
    required this.minDeliveryTime,
    required this.maxDeliveryTime,
    required this.freeDelivery,
    required this.halalTagStatus,
    required this.nutritionsName,
    required this.allergiesName,
    required this.cuisines,
    required this.taxData,
    required this.imageFullUrl,
    required this.nutritions,
    required this.allergies,
  });
}

@immutable
class AddOnEntity {
  final int id;
  final String name;
  final int price;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int restaurantId;
  final int status;
  final String stockType;
  final int addonStock;
  final int sellCount;
  final dynamic addonCategoryId;
  final List<dynamic> taxIds;
  final List<dynamic> translations;

  const AddOnEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.restaurantId,
    required this.status,
    required this.stockType,
    required this.addonStock,
    required this.sellCount,
    required this.addonCategoryId,
    required this.taxIds,
    required this.translations,
  });
}

@immutable
class AllergyEntity {
  final int id;
  final String allergy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final AllergyPivotEntity pivot;

  const AllergyEntity({
    required this.id,
    required this.allergy,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });
}

@immutable
class AllergyPivotEntity {
  final int foodId;
  final int allergyId;

  const AllergyPivotEntity({required this.foodId, required this.allergyId});
}

@immutable
class CategoryIdEntity {
  final String id;
  final int position;
  final String categoryName;

  const CategoryIdEntity({
    required this.id,
    required this.position,
    required this.categoryName,
  });
}

@immutable
class CuisineEntity {
  final int id;
  final String name;
  final String image;

  const CuisineEntity({
    required this.id,
    required this.name,
    required this.image,
  });
}

@immutable
class NutritionEntity {
  final int id;
  final String nutrition;
  final DateTime createdAt;
  final DateTime updatedAt;
  final NutritionPivotEntity pivot;

  const NutritionEntity({
    required this.id,
    required this.nutrition,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });
}

@immutable
class NutritionPivotEntity {
  final int foodId;
  final int nutritionId;

  const NutritionPivotEntity({required this.foodId, required this.nutritionId});
}

@immutable
class VariationEntity {
  final int? variationId;
  final String name;
  final String type;
  final String min;
  final String max;
  final String requiredField;
  final List<ValueEntity> values;

  const VariationEntity({
    required this.variationId,
    required this.name,
    required this.type,
    required this.min,
    required this.max,
    required this.requiredField,
    required this.values,
  });
}

@immutable
class ValueEntity {
  final String label;
  final int optionPrice;
  final String totalStock;
  final String stockType;
  final String sellCount;
  final int? optionId;
  final int? currentStock;

  const ValueEntity({
    required this.label,
    required this.optionPrice,
    required this.totalStock,
    required this.stockType,
    required this.sellCount,
    required this.optionId,
    required this.currentStock,
  });
}
