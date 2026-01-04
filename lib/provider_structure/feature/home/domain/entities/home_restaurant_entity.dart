class HomeRestaurantEntity {
  final String filterData;
  final int totalSize;
  final String limit;
  final String offset;
  final List<RestaurantElementEntity> restaurants;

  const HomeRestaurantEntity({
    required this.filterData,
    required this.totalSize,
    required this.limit,
    required this.offset,
    required this.restaurants,
  });
}

class RestaurantElementEntity {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String logo;
  final String latitude;
  final String longitude;
  final String address;
  final dynamic footerText;
  final int minimumOrder;
  final dynamic comission;
  final bool scheduleOrder;
  final dynamic openingTime;
  final dynamic closeingTime;
  final int status;
  final int vendorId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool freeDelivery;
  final String coverPhoto;
  final bool delivery;
  final bool takeAway;
  final bool foodSection;
  final int tax;
  final int zoneId;
  final bool reviewsSection;
  final bool active;
  final String offDay;
  final int selfDeliverySystem;
  final bool posSystem;
  final int minimumShippingCharge;
  final String deliveryTime;
  final int veg;
  final int nonVeg;
  final int orderCount;
  final int totalOrder;
  final dynamic perKmShippingCharge;
  final String restaurantModel;
  final dynamic maximumShippingCharge;
  final String slug;
  final bool orderSubscriptionActive;
  final bool cutlery;
  final dynamic metaTitle;
  final dynamic metaDescription;
  final dynamic metaImage;
  final int announcement;
  final String announcementMessage;
  final dynamic qrCode;
  final dynamic additionalData;
  final String additionalDocuments;
  final dynamic packageId;
  final dynamic tin;
  final dynamic tinExpireDate;
  final dynamic tinCertificateImage;
  final int open;
  final double distance;
  final int foodsCount;
  final int reviewsCommentsCount;
  final List<FoodEntity> foods;
  final int priceStartsFrom;
  final List<dynamic> coupons;
  final String deliveryFee;
  final int restaurantStatus;
  final List<dynamic> cuisine;
  final List<dynamic> ratings;
  final int avgRating;
  final int ratingCount;
  final int positiveRating;
  final int customerOrderDate;
  final bool customerDateOrderSratus;
  final bool instantOrder;
  final bool halalTagStatus;
  final String currentOpeningTime;
  final bool isExtraPackagingActive;
  final bool extraPackagingStatus;
  final int extraPackagingAmount;
  final bool isDineInActive;
  final bool canEditOrder;
  final int scheduleAdvanceDineInBookingDuration;
  final String scheduleAdvanceDineInBookingDurationTimeFormat;
  final List<dynamic> characteristics;
  final bool gstStatus;
  final String gstCode;
  final bool freeDeliveryDistanceStatus;
  final String freeDeliveryDistanceValue;
  final String logoFullUrl;
  final String coverPhotoFullUrl;
  final dynamic metaImageFullUrl;
  final dynamic tinCertificateImageFullUrl;
  final dynamic discount;

  const RestaurantElementEntity({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.logo,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.footerText,
    required this.minimumOrder,
    required this.comission,
    required this.scheduleOrder,
    required this.openingTime,
    required this.closeingTime,
    required this.status,
    required this.vendorId,
    required this.createdAt,
    required this.updatedAt,
    required this.freeDelivery,
    required this.coverPhoto,
    required this.delivery,
    required this.takeAway,
    required this.foodSection,
    required this.tax,
    required this.zoneId,
    required this.reviewsSection,
    required this.active,
    required this.offDay,
    required this.selfDeliverySystem,
    required this.posSystem,
    required this.minimumShippingCharge,
    required this.deliveryTime,
    required this.veg,
    required this.nonVeg,
    required this.orderCount,
    required this.totalOrder,
    required this.perKmShippingCharge,
    required this.restaurantModel,
    required this.maximumShippingCharge,
    required this.slug,
    required this.orderSubscriptionActive,
    required this.cutlery,
    required this.metaTitle,
    required this.metaDescription,
    required this.metaImage,
    required this.announcement,
    required this.announcementMessage,
    required this.qrCode,
    required this.additionalData,
    required this.additionalDocuments,
    required this.packageId,
    required this.tin,
    required this.tinExpireDate,
    required this.tinCertificateImage,
    required this.open,
    required this.distance,
    required this.foodsCount,
    required this.reviewsCommentsCount,
    required this.foods,
    required this.priceStartsFrom,
    required this.coupons,
    required this.deliveryFee,
    required this.restaurantStatus,
    required this.cuisine,
    required this.ratings,
    required this.avgRating,
    required this.ratingCount,
    required this.positiveRating,
    required this.customerOrderDate,
    required this.customerDateOrderSratus,
    required this.instantOrder,
    required this.halalTagStatus,
    required this.currentOpeningTime,
    required this.isExtraPackagingActive,
    required this.extraPackagingStatus,
    required this.extraPackagingAmount,
    required this.isDineInActive,
    required this.canEditOrder,
    required this.scheduleAdvanceDineInBookingDuration,
    required this.scheduleAdvanceDineInBookingDurationTimeFormat,
    required this.characteristics,
    required this.gstStatus,
    required this.gstCode,
    required this.freeDeliveryDistanceStatus,
    required this.freeDeliveryDistanceValue,
    required this.logoFullUrl,
    required this.coverPhotoFullUrl,
    required this.metaImageFullUrl,
    required this.tinCertificateImageFullUrl,
    required this.discount,
  });
}

class FoodEntity {
  final int id;
  final String image;
  final String name;
  final String imageFullUrl;
  final List<dynamic> storage;
  final List<TranslationEntity> translations;

  const FoodEntity({
    required this.id,
    required this.image,
    required this.name,
    required this.imageFullUrl,
    required this.storage,
    required this.translations,
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
