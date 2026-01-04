class FoodCampaignEntity {
  final int id;
  final String image;
  final String description;
  final int status;
  final int adminId;
  final dynamic categoryId;
  final List<CategoryIdEntity> categoryIds;
  final List<VariationEntity> variations;
  final List<AddOnEntity> addOns;
  final String attributes;
  final String choiceOptions;
  final int price;
  final int tax;
  final String taxType;
  final int discount;
  final String discountType;
  final int restaurantId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int veg;
  final dynamic slug;
  final dynamic maximumCartQuantity;
  final int tempAvailable;
  final int open;
  final String name;
  final String availableTimeStarts;
  final String availableTimeEnds;
  final DateTime availableDateStarts;
  final DateTime availableDateEnds;
  final int recommended;
  final dynamic tags;
  final String restaurantName;
  final int restaurantStatus;
  final int restaurantDiscount;
  final String restaurantOpeningTime;
  final String restaurantClosingTime;
  final bool scheduleOrder;
  final int ratingCount;
  final int avgRating;
  final int minDeliveryTime;
  final int maxDeliveryTime;
  final int freeDelivery;
  final int halalTagStatus;
  final dynamic nutritionsName;
  final dynamic allergiesName;
  final List<dynamic> cuisines;
  final List<dynamic> taxData;
  final String imageFullUrl;
  final List<TranslationEntity> translations;
  final List<StorageEntity> storage;

  const FoodCampaignEntity({
    required this.id,
    required this.image,
    required this.description,
    required this.status,
    required this.adminId,
    required this.categoryId,
    required this.categoryIds,
    required this.variations,
    required this.addOns,
    required this.attributes,
    required this.choiceOptions,
    required this.price,
    required this.tax,
    required this.taxType,
    required this.discount,
    required this.discountType,
    required this.restaurantId,
    required this.createdAt,
    required this.updatedAt,
    required this.veg,
    required this.slug,
    required this.maximumCartQuantity,
    required this.tempAvailable,
    required this.open,
    required this.name,
    required this.availableTimeStarts,
    required this.availableTimeEnds,
    required this.availableDateStarts,
    required this.availableDateEnds,
    required this.recommended,
    required this.tags,
    required this.restaurantName,
    required this.restaurantStatus,
    required this.restaurantDiscount,
    required this.restaurantOpeningTime,
    required this.restaurantClosingTime,
    required this.scheduleOrder,
    required this.ratingCount,
    required this.avgRating,
    required this.minDeliveryTime,
    required this.maxDeliveryTime,
    required this.freeDelivery,
    required this.halalTagStatus,
    required this.nutritionsName,
    required this.allergiesName,
    required this.cuisines,
    required this.taxData,
    required this.imageFullUrl,
    required this.translations,
    required this.storage,
  });
}

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

class StorageEntity {
  final int id;
  final String dataType;
  final String dataId;
  final String key;
  final String value;
  final DateTime createdAt;
  final DateTime updatedAt;

  const StorageEntity({
    required this.id,
    required this.dataType,
    required this.dataId,
    required this.key,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
  });
}

class TranslationEntity {
  final int id;
  final String translationableType;
  final int translationableId;
  final String locale;
  final String key;
  final String value;
  final dynamic createdAt;
  final dynamic updatedAt;

  const TranslationEntity({
    required this.id,
    required this.translationableType,
    required this.translationableId,
    required this.locale,
    required this.key,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
  });
}

class VariationEntity {
  final String name;
  final String type;
  final int min;
  final int max;
  final String requiredField;
  final List<ValueEntity> values;

  const VariationEntity({
    required this.name,
    required this.type,
    required this.min,
    required this.max,
    required this.requiredField,
    required this.values,
  });
}

class ValueEntity {
  final String label;
  final String optionPrice;

  const ValueEntity({required this.label, required this.optionPrice});
}
