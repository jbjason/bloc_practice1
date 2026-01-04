

import 'package:bloc_practice1/provider_structure/core/error/safe_parse.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/popular_product_entity.dart';

class PopularProduct extends PopularProductEntity {
  const PopularProduct({
    required super.totalSize,
    required super.limit,
    required super.offset,
    required super.products,
  });

  factory PopularProduct.fromJson(Map<String, dynamic> json) => PopularProduct(
    totalSize: safeParse<int>(json["total_size"], 'total_size')!,
    limit: json["limit"],
    offset: json["offset"],
    products: List<Product>.from(
      json["products"].map((x) => Product.fromJson(x)),
    ),
  );
}

class Product extends ProductEntity {
  const Product({
    required super.id,
    required super.name,
    required super.description,
    required super.image,
    required super.categoryId,
    required super.categoryIds,
    required super.variations,
    required super.addOns,
    required super.price,
    required super.tax,
    required super.taxType,
    required super.discount,
    required super.discountType,
    required super.availableTimeStarts,
    required super.availableTimeEnds,
    required super.veg,
    required super.status,
    required super.restaurantId,
    required super.createdAt,
    required super.updatedAt,
    required super.orderCount,
    required super.avgRating,
    required super.ratingCount,
    required super.recommended,
    required super.slug,
    required super.maximumCartQuantity,
    required super.isHalal,
    required super.itemStock,
    required super.sellCount,
    required super.stockType,
    required super.tempAvailable,
    required super.open,
    required super.reviewsCount,
    required super.restaurantName,
    required super.restaurantStatus,
    required super.restaurantDiscount,
    required super.restaurantOpeningTime,
    required super.restaurantClosingTime,
    required super.scheduleOrder,
    required super.minDeliveryTime,
    required super.maxDeliveryTime,
    required super.freeDelivery,
    required super.halalTagStatus,
    required super.nutritionsName,
    required super.allergiesName,
    required super.cuisines,
    required super.taxData,
    required super.imageFullUrl,
    required super.nutritions,
    required super.allergies,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    description: safeParse<String>(json["description"], 'description')!,
    image: safeParse<String>(json["image"], 'image')!,
    categoryId: safeParse<int>(json["category_id"], 'category_id')!,
    categoryIds: List<CategoryId>.from(
      json["category_ids"].map((x) => CategoryId.fromJson(x)),
    ),
    variations: List<Variation>.from(
      json["variations"].map((x) => Variation.fromJson(x)),
    ),
    addOns: List<AddOn>.from(json["add_ons"].map((x) => AddOn.fromJson(x))),
    price: safeParse<int>(json["price"], 'price')!,
    tax: safeParse<int>(json["tax"], 'tax')!,
    taxType: safeParse<String>(json["tax_type"], 'tax_type')!,
    discount: safeParse<int>(json["discount"], 'discount')!,
    discountType: safeParse<String>(json["discount_type"], 'discount_type')!,
    availableTimeStarts: safeParse<String>(
      json["available_time_starts"],
      'available_time_starts',
    )!,
    availableTimeEnds: safeParse<String>(
      json["available_time_ends"],
      'available_time_ends',
    )!,
    veg: safeParse<int>(json["veg"], 'veg')!,
    status: safeParse<int>(json["status"], 'status')!,
    restaurantId: safeParse<int>(json["restaurant_id"], 'restaurant_id')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    orderCount: safeParse<int>(json["order_count"], 'order_count')!,
    avgRating: safeParse<double>(json["avg_rating"], 'avg_rating')!,
    ratingCount: safeParse<int>(json["rating_count"], 'rating_count')!,
    recommended: safeParse<int>(json["recommended"], 'recommended')!,
    slug: safeParse<String>(json["slug"], 'slug')!,
    maximumCartQuantity: json["maximum_cart_quantity"],
    isHalal: safeParse<int>(json["is_halal"], 'is_halal')!,
    itemStock: safeParse<int>(json["item_stock"], 'item_stock')!,
    sellCount: safeParse<int>(json["sell_count"], 'sell_count')!,
    stockType: safeParse<String>(json["stock_type"], 'stock_type')!,
    tempAvailable: safeParse<int>(json["temp_available"], 'temp_available')!,
    open: safeParse<int>(json["open"], 'open')!,
    reviewsCount: safeParse<int>(json["reviews_count"], 'reviews_count')!,
    restaurantName: safeParse<String>(
      json["restaurant_name"],
      'restaurant_name',
    )!,
    restaurantStatus: safeParse<int>(
      json["restaurant_status"],
      'restaurant_status',
    )!,
    restaurantDiscount: safeParse<int>(
      json["restaurant_discount"],
      'restaurant_discount',
    )!,
    restaurantOpeningTime: json["restaurant_opening_time"],
    restaurantClosingTime: json["restaurant_closing_time"],
    scheduleOrder: safeParse<bool>(json["schedule_order"], 'schedule_order')!,
    minDeliveryTime: safeParse<int>(
      json["min_delivery_time"],
      'min_delivery_time',
    )!,
    maxDeliveryTime: safeParse<int>(
      json["max_delivery_time"],
      'max_delivery_time',
    )!,
    freeDelivery: safeParse<int>(json["free_delivery"], 'free_delivery')!,
    halalTagStatus: safeParse<int>(
      json["halal_tag_status"],
      'halal_tag_status',
    )!,
    nutritionsName: List<String>.from(
      json["nutritions_name"].map(
        (x) => safeParse<String>(x, 'nutritions_name_element')!,
      ),
    ),
    allergiesName: List<String>.from(
      json["allergies_name"].map(
        (x) => safeParse<String>(x, 'allergies_name_element')!,
      ),
    ),
    cuisines: List<Cuisine>.from(
      json["cuisines"].map((x) => Cuisine.fromJson(x)),
    ),
    taxData: List<dynamic>.from(json["tax_data"].map((x) => x)),
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
    nutritions: List<Nutrition>.from(
      json["nutritions"].map((x) => Nutrition.fromJson(x)),
    ),
    allergies: List<Allergy>.from(
      json["allergies"].map((x) => Allergy.fromJson(x)),
    ),
  );
}

class AddOn extends AddOnEntity {
  const AddOn({
    required super.id,
    required super.name,
    required super.price,
    required super.createdAt,
    required super.updatedAt,
    required super.restaurantId,
    required super.status,
    required super.stockType,
    required super.addonStock,
    required super.sellCount,
    required super.addonCategoryId,
    required super.taxIds,
    required super.translations,
  });

  factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    price: safeParse<int>(json["price"], 'price')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    restaurantId: safeParse<int>(json["restaurant_id"], 'restaurant_id')!,
    status: safeParse<int>(json["status"], 'status')!,
    stockType: safeParse<String>(json["stock_type"], 'stock_type')!,
    addonStock: safeParse<int>(json["addon_stock"], 'addon_stock')!,
    sellCount: safeParse<int>(json["sell_count"], 'sell_count')!,
    addonCategoryId: json["addon_category_id"],
    taxIds: List<dynamic>.from(json["tax_ids"].map((x) => x)),
    translations: List<dynamic>.from(json["translations"].map((x) => x)),
  );
}

class Allergy extends AllergyEntity {
  const Allergy({
    required super.id,
    required super.allergy,
    required super.createdAt,
    required super.updatedAt,
    required super.pivot,
  });

  factory Allergy.fromJson(Map<String, dynamic> json) => Allergy(
    id: safeParse<int>(json["id"], 'id')!,
    allergy: safeParse<String>(json["allergy"], 'allergy')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    pivot: AllergyPivot.fromJson(json["pivot"]),
  );
}

class AllergyPivot extends AllergyPivotEntity {
  const AllergyPivot({required super.foodId, required super.allergyId});

  factory AllergyPivot.fromJson(Map<String, dynamic> json) => AllergyPivot(
    foodId: safeParse<int>(json["food_id"], 'food_id')!,
    allergyId: safeParse<int>(json["allergy_id"], 'allergy_id')!,
  );
}

class CategoryId extends CategoryIdEntity {
  const CategoryId({
    required super.id,
    required super.position,
    required super.categoryName,
  });

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
    id: safeParse<String>(json["id"], 'id')!,
    position: safeParse<int>(json["position"], 'position')!,
    categoryName: safeParse<String>(json["category_name"], 'category_name')!,
  );
}

class Cuisine extends CuisineEntity {
  const Cuisine({required super.id, required super.name, required super.image});

  factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    image: safeParse<String>(json["image"], 'image')!,
  );
}

class Nutrition extends NutritionEntity {
  const Nutrition({
    required super.id,
    required super.nutrition,
    required super.createdAt,
    required super.updatedAt,
    required super.pivot,
  });

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
    id: safeParse<int>(json["id"], 'id')!,
    nutrition: safeParse<String>(json["nutrition"], 'nutrition')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    pivot: NutritionPivot.fromJson(json["pivot"]),
  );
}

class NutritionPivot extends NutritionPivotEntity {
  const NutritionPivot({required super.foodId, required super.nutritionId});

  factory NutritionPivot.fromJson(Map<String, dynamic> json) => NutritionPivot(
    foodId: safeParse<int>(json["food_id"], 'food_id')!,
    nutritionId: safeParse<int>(json["nutrition_id"], 'nutrition_id')!,
  );
}

class Variation extends VariationEntity {
  const Variation({
    required super.variationId,
    required super.name,
    required super.type,
    required super.min,
    required super.max,
    required super.requiredField,
    required super.values,
  });

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
    variationId:
        json["variation_id"], // safeParse<int?>(json["variation_id"], 'variation_id')!,
    name: safeParse<String>(json["name"], 'name')!,
    type: safeParse<String>(json["type"], 'type')!,
    min: safeParse<String>(json["min"], 'min')!,
    max: safeParse<String>(json["max"], 'max')!,
    requiredField: safeParse<String>(json["required"], 'required')!,
    values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
  );
}

class Value extends ValueEntity {
  const Value({
    required super.label,
    required super.optionPrice,
    required super.totalStock,
    required super.stockType,
    required super.sellCount,
    required super.optionId,
    required super.currentStock,
  });

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    label: safeParse<String>(json["label"], 'label')!,
    optionPrice: safeParse<int>(json["optionPrice"], 'optionPrice')!,
    totalStock: safeParse<String>(json["total_stock"], 'total_stock')!,
    stockType: safeParse<String>(json["stock_type"], 'stock_type')!,
    sellCount: safeParse<String>(json["sell_count"], 'sell_count')!,
    optionId:
        json["option_id"], // safeParse<int?>(json["option_id"], 'option_id')!,
    currentStock:
        json["current_stock"], // safeParse<int?>(json["current_stock"], 'current_stock')!,
  );
}
