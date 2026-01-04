class HomeBannerEntity {
  final int id;
  final String title;
  final String type;
  final String image;
  final RestaurantEntity restaurant;
  final dynamic food;
  final String imageFullUrl;

  const HomeBannerEntity({
    required this.id,
    required this.title,
    required this.type,
    required this.image,
    required this.restaurant,
    required this.food,
    required this.imageFullUrl,
  });
}

class RestaurantEntity {
  int id;
  String name;
  String phone;
  String email;
  String logo;
  String latitude;
  String longitude;
  String address;
  dynamic footerText;
  int minimumOrder;
  double? comission;
  bool scheduleOrder;
  dynamic openingTime;
  dynamic closeingTime;
  int status;
  int vendorId;
  DateTime createdAt;
  DateTime updatedAt;
  bool freeDelivery;
  String coverPhoto;
  bool delivery;
  bool takeAway;
  bool foodSection;
  int tax;
  int zoneId;
  bool reviewsSection;
  bool active;
  String offDay;
  int selfDeliverySystem;
  bool posSystem;
  int minimumShippingCharge;
  String deliveryTime;
  int veg;
  int nonVeg;
  int orderCount;
  int totalOrder;
  double? perKmShippingCharge;
  String restaurantModel;
  double? maximumShippingCharge;
  String slug;
  bool orderSubscriptionActive;
  bool cutlery;
  dynamic metaTitle;
  dynamic metaDescription;
  dynamic metaImage;
  int announcement;
  String announcementMessage;
  dynamic qrCode;
  dynamic additionalData;
  String additionalDocuments;
  int? packageId;
  dynamic tin;
  dynamic tinExpireDate;
  dynamic tinCertificateImage;
  int restaurantStatus;
  List<FoodEntity> foods;
  List<int> ratings;
  int avgRating;
  int ratingCount;
  int positiveRating;
  int priceStartsFrom;
  int customerOrderDate;
  bool customerDateOrderSratus;
  bool instantOrder;
  bool halalTagStatus;
  bool isExtraPackagingActive;
  bool extraPackagingStatus;
  int extraPackagingAmount;
  String deliveryFee;
  String currentOpeningTime;
  bool isDineInActive;
  int scheduleAdvanceDineInBookingDuration;
  String scheduleAdvanceDineInBookingDurationTimeFormat;
  bool canEditOrder;
  bool gstStatus;
  String gstCode;
  bool freeDeliveryDistanceStatus;
  String freeDeliveryDistanceValue;
  String logoFullUrl;
  String coverPhotoFullUrl;

  RestaurantEntity({
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
    required this.restaurantStatus,
    required this.foods,
    required this.ratings,
    required this.avgRating,
    required this.ratingCount,
    required this.positiveRating,
    required this.priceStartsFrom,
    required this.customerOrderDate,
    required this.customerDateOrderSratus,
    required this.instantOrder,
    required this.halalTagStatus,
    required this.isExtraPackagingActive,
    required this.extraPackagingStatus,
    required this.extraPackagingAmount,
    required this.deliveryFee,
    required this.currentOpeningTime,
    required this.isDineInActive,
    required this.scheduleAdvanceDineInBookingDuration,
    required this.scheduleAdvanceDineInBookingDurationTimeFormat,
    required this.canEditOrder,
    required this.gstStatus,
    required this.gstCode,
    required this.freeDeliveryDistanceStatus,
    required this.freeDeliveryDistanceValue,
    required this.logoFullUrl,
    required this.coverPhotoFullUrl,
  });
}

class FoodEntity {
  final int id;
  final String name;
  final String image;
  final String imageFullUrl;

  const FoodEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.imageFullUrl,
  });
}
