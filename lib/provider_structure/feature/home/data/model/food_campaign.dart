

import 'package:bloc_practice1/provider_structure/core/error/safe_parse.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/food_campaign_entity.dart';

class FoodCampaign extends FoodCampaignEntity {
  FoodCampaign({
    required super.id,
    required super.image,
    required super.description,
    required super.status,
    required super.adminId,
    required super.categoryId,
    required super.categoryIds,
    required super.variations,
    required super.addOns,
    required super.attributes,
    required super.choiceOptions,
    required super.price,
    required super.tax,
    required super.taxType,
    required super.discount,
    required super.discountType,
    required super.restaurantId,
    required super.createdAt,
    required super.updatedAt,
    required super.veg,
    required super.slug,
    required super.maximumCartQuantity,
    required super.tempAvailable,
    required super.open,
    required super.name,
    required super.availableTimeStarts,
    required super.availableTimeEnds,
    required super.availableDateStarts,
    required super.availableDateEnds,
    required super.recommended,
    required super.tags,
    required super.restaurantName,
    required super.restaurantStatus,
    required super.restaurantDiscount,
    required super.restaurantOpeningTime,
    required super.restaurantClosingTime,
    required super.scheduleOrder,
    required super.ratingCount,
    required super.avgRating,
    required super.minDeliveryTime,
    required super.maxDeliveryTime,
    required super.freeDelivery,
    required super.halalTagStatus,
    required super.nutritionsName,
    required super.allergiesName,
    required super.cuisines,
    required super.taxData,
    required super.imageFullUrl,
    required super.translations,
    required super.storage,
  });

  factory FoodCampaign.fromJson(Map<String, dynamic> json) => FoodCampaign(
    id: safeParse<int>(json["id"], 'id')!,
    image: safeParse<String>(json["image"], 'image')!,
    description: safeParse<String>(json["description"], 'description')!,
    status: safeParse<int>(json["status"], 'status')!,
    adminId: safeParse<int>(json["admin_id"], 'admin_id')!,
    categoryId: json["category_id"],
    categoryIds: List<CategoryId>.from(
      json["category_ids"].map((x) => CategoryId.fromJson(x)),
    ),
    variations: List<Variation>.from(
      json["variations"].map((x) => Variation.fromJson(x)),
    ),
    addOns: List<AddOn>.from(json["add_ons"].map((x) => AddOn.fromJson(x))),
    attributes: safeParse<String>(json["attributes"], 'attributes')!,
    choiceOptions: safeParse<String>(json["choice_options"], 'choice_options')!,
    price: safeParse<int>(json["price"], 'price')!,
    tax: safeParse<int>(json["tax"], 'tax')!,
    taxType: safeParse<String>(json["tax_type"], 'tax_type')!,
    discount: safeParse<int>(json["discount"], 'discount')!,
    discountType: safeParse<String>(json["discount_type"], 'discount_type')!,
    restaurantId: safeParse<int>(json["restaurant_id"], 'restaurant_id')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    veg: safeParse<int>(json["veg"], 'veg')!,
    slug: json["slug"],
    maximumCartQuantity: json["maximum_cart_quantity"],
    tempAvailable: safeParse<int>(json["temp_available"], 'temp_available')!,
    open: safeParse<int>(json["open"], 'open')!,
    name: safeParse<String>(json["name"], 'name')!,
    availableTimeStarts: safeParse<String>(
      json["available_time_starts"],
      'available_time_starts',
    )!,
    availableTimeEnds: safeParse<String>(
      json["available_time_ends"],
      'available_time_ends',
    )!,
    availableDateStarts: DateTime.parse(
      safeParse<String>(
        json["available_date_starts"],
        'available_date_starts',
      )!,
    ),
    availableDateEnds: DateTime.parse(
      safeParse<String>(json["available_date_ends"], 'available_date_ends')!,
    ),
    recommended: safeParse<int>(json["recommended"], 'recommended')!,
    tags: json["tags"],
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
    restaurantOpeningTime: safeParse<String>(
      json["restaurant_opening_time"],
      'restaurant_opening_time',
    )!,
    restaurantClosingTime: safeParse<String>(
      json["restaurant_closing_time"],
      'restaurant_closing_time',
    )!,
    scheduleOrder: safeParse<bool>(json["schedule_order"], 'schedule_order')!,
    ratingCount: safeParse<int>(json["rating_count"], 'rating_count')!,
    avgRating: safeParse<int>(json["avg_rating"], 'avg_rating')!,
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
    nutritionsName: json["nutritions_name"],
    allergiesName: json["allergies_name"],
    cuisines: List<dynamic>.from(json["cuisines"].map((x) => x)),
    taxData: List<dynamic>.from(json["tax_data"].map((x) => x)),
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
    translations: List<Translation>.from(
      json["translations"].map((x) => Translation.fromJson(x)),
    ),
    storage: List<Storage>.from(
      json["storage"].map((x) => Storage.fromJson(x)),
    ),
  );
}

class AddOn extends AddOnEntity {
  AddOn({
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

class CategoryId extends CategoryIdEntity {
  CategoryId({
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

class Storage extends StorageEntity {
  Storage({
    required super.id,
    required super.dataType,
    required super.dataId,
    required super.key,
    required super.value,
    required super.createdAt,
    required super.updatedAt,
  });

  factory Storage.fromJson(Map<String, dynamic> json) => Storage(
    id: safeParse<int>(json["id"], 'id')!,
    dataType: safeParse<String>(json["data_type"], 'data_type')!,
    dataId: safeParse<String>(json["data_id"], 'data_id')!,
    key: safeParse<String>(json["key"], 'key')!,
    value: safeParse<String>(json["value"], 'value')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
  );
}

class Translation extends TranslationEntity {
  Translation({
    required super.id,
    required super.translationableType,
    required super.translationableId,
    required super.locale,
    required super.key,
    required super.value,
    required super.createdAt,
    required super.updatedAt,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    id: safeParse<int>(json["id"], 'id')!,
    translationableType: safeParse<String>(
      json["translationable_type"],
      'translationable_type',
    )!,
    translationableId: safeParse<int>(
      json["translationable_id"],
      'translationable_id',
    )!,
    locale: safeParse<String>(json["locale"], 'locale')!,
    key: safeParse<String>(json["key"], 'key')!,
    value: safeParse<String>(json["value"], 'value')!,
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );
}

class Variation extends VariationEntity {
  Variation({
    required super.name,
    required super.type,
    required super.min,
    required super.max,
    required super.requiredField,
    required super.values,
  });

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
    name: safeParse<String>(json["name"], 'name')!,
    type: safeParse<String>(json["type"], 'type')!,
    min: safeParse<int>(json["min"], 'min')!,
    max: safeParse<int>(json["max"], 'max')!,
    requiredField: safeParse<String>(json["required"], 'required')!,
    values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
  );
}

class Value extends ValueEntity {
  Value({required super.label, required super.optionPrice});

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    label: safeParse<String>(json["label"], 'label')!,
    optionPrice: safeParse<String>(json["optionPrice"], 'optionPrice')!,
  );
}
