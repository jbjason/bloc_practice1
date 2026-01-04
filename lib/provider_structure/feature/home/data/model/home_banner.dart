

import 'package:bloc_practice1/provider_structure/core/error/safe_parse.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/home_banner_entity.dart';

class HomeBanner extends HomeBannerEntity {
  HomeBanner({
    required super.id,
    required super.title,
    required super.type,
    required super.image,
    required super.restaurant,
    required super.food,
    required super.imageFullUrl,
  });

  factory HomeBanner.fromJson(Map<String, dynamic> json) => HomeBanner(
    id: json["id"],
    title: json["title"],
    type: json["type"],
    image: json["image"],
    restaurant: Restaurant.fromJson(json["restaurant"]),
    food: json["food"],
    imageFullUrl: json["image_full_url"],
  );
}

class Restaurant extends RestaurantEntity {
  Restaurant({
    required super.id,
    required super.name,
    required super.phone,
    required super.email,
    required super.logo,
    required super.latitude,
    required super.longitude,
    required super.address,
    required super.footerText,
    required super.minimumOrder,
    required super.comission,
    required super.scheduleOrder,
    required super.openingTime,
    required super.closeingTime,
    required super.status,
    required super.vendorId,
    required super.createdAt,
    required super.updatedAt,
    required super.freeDelivery,
    required super.coverPhoto,
    required super.delivery,
    required super.takeAway,
    required super.foodSection,
    required super.tax,
    required super.zoneId,
    required super.reviewsSection,
    required super.active,
    required super.offDay,
    required super.selfDeliverySystem,
    required super.posSystem,
    required super.minimumShippingCharge,
    required super.deliveryTime,
    required super.veg,
    required super.nonVeg,
    required super.orderCount,
    required super.totalOrder,
    required super.perKmShippingCharge,
    required super.restaurantModel,
    required super.maximumShippingCharge,
    required super.slug,
    required super.orderSubscriptionActive,
    required super.cutlery,
    required super.metaTitle,
    required super.metaDescription,
    required super.metaImage,
    required super.announcement,
    required super.announcementMessage,
    required super.qrCode,
    required super.additionalData,
    required super.additionalDocuments,
    required super.packageId,
    required super.tin,
    required super.tinExpireDate,
    required super.tinCertificateImage,
    required super.restaurantStatus,
    required super.foods,
    required super.ratings,
    required super.avgRating,
    required super.ratingCount,
    required super.positiveRating,
    required super.priceStartsFrom,
    required super.customerOrderDate,
    required super.customerDateOrderSratus,
    required super.instantOrder,
    required super.halalTagStatus,
    required super.isExtraPackagingActive,
    required super.extraPackagingStatus,
    required super.extraPackagingAmount,
    required super.deliveryFee,
    required super.currentOpeningTime,
    required super.isDineInActive,
    required super.scheduleAdvanceDineInBookingDuration,
    required super.scheduleAdvanceDineInBookingDurationTimeFormat,
    required super.canEditOrder,
    required super.gstStatus,
    required super.gstCode,
    required super.freeDeliveryDistanceStatus,
    required super.freeDeliveryDistanceValue,
    required super.logoFullUrl,
    required super.coverPhotoFullUrl,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    phone: safeParse<String>(json["phone"], 'phone')!,
    email: safeParse<String>(json["email"], 'email')!,
    logo: safeParse<String>(json["logo"], 'logo')!,
    latitude: safeParse<String>(json["latitude"], 'latitude')!,
    longitude: safeParse<String>(json["longitude"], 'longitude')!,
    address: safeParse<String>(json["address"], 'address')!,
    footerText: safeParse<String>(json["footer_text"], 'footer_text')!,
    minimumOrder: safeParse<int>(json["minimum_order"], 'minimum_order')!,
    comission: json["comission"]
        ?.toDouble(), //safeParse<double>(json["comission"], 'comission')!,
    scheduleOrder: safeParse<bool>(json["schedule_order"], 'schedule_order')!,
    openingTime: safeParse<String>(json["opening_time"], 'opening_time')!,
    closeingTime: safeParse<String>(json["closeing_time"], 'closeing_time')!,
    status: safeParse<int>(json["status"], 'status')!,
    vendorId: safeParse<int>(json["vendor_id"], 'vendor_id')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    freeDelivery: safeParse<bool>(json["free_delivery"], 'free_delivery')!,
    coverPhoto: safeParse<String>(json["cover_photo"], 'cover_photo')!,
    delivery: safeParse<bool>(json["delivery"], 'delivery')!,
    takeAway: safeParse<bool>(json["take_away"], 'take_away')!,
    foodSection: safeParse<bool>(json["food_section"], 'food_section')!,
    tax: safeParse<int>(json["tax"].toInt(), 'tax')!,
    zoneId: safeParse<int>(json["zone_id"], 'zone_id')!,
    reviewsSection: safeParse<bool>(
      json["reviews_section"],
      'reviews_section',
    )!,
    active: safeParse<bool>(json["active"], 'active')!,
    offDay: safeParse<String>(json["off_day"], 'off_day')!,
    selfDeliverySystem: safeParse<int>(
      json["self_delivery_system"],
      'self_delivery_system',
    )!,
    posSystem: safeParse<bool>(json["pos_system"], 'pos_system')!,
    minimumShippingCharge: safeParse<int>(
      json["minimum_shipping_charge"],
      'minimum_shipping_charge',
    )!,
    deliveryTime: safeParse<String>(json["delivery_time"], 'delivery_time')!,
    veg: safeParse<int>(json["veg"], 'veg')!,
    nonVeg: safeParse<int>(json["non_veg"], 'non_veg')!,
    orderCount: safeParse<int>(json["order_count"], 'order_count')!,
    totalOrder: safeParse<int>(json["total_order"], 'total_order')!,
    perKmShippingCharge: json["per_km_shipping_charge"]?.toDouble(),
    // safeParse<double>( json["per_km_shipping_charge"],'per_km_shipping_charge',)!,
    restaurantModel: safeParse<String>(
      json["restaurant_model"],
      'restaurant_model',
    )!,
    maximumShippingCharge: json["maximum_shipping_charge"]?.toDouble(),
    //safeParse<double>(json["maximum_shipping_charge"],'maximum_shipping_charge',)!,
    slug: safeParse<String>(json["slug"], 'slug')!,
    orderSubscriptionActive: safeParse<bool>(
      json["order_subscription_active"],
      'order_subscription_active',
    )!,
    cutlery: safeParse<bool>(json["cutlery"], 'cutlery')!,
    metaTitle: safeParse<String>(json["meta_title"], 'meta_title')!,
    metaDescription: safeParse<String>(
      json["meta_description"],
      'meta_description',
    )!,
    metaImage: safeParse<String>(json["meta_image"], 'meta_image')!,
    announcement: safeParse<int>(json["announcement"], 'announcement')!,
    announcementMessage: safeParse<String>(
      json["announcement_message"],
      'announcement_message',
    )!,
    qrCode: safeParse<String>(json["qr_code"], 'qr_code')!,
    additionalData: json["additional_data"],
    additionalDocuments: json["additional_documents"],
    packageId: json["package_id"],
    // safeParse<int>(json["package_id"], 'package_id')!,
    tin: safeParse<String>(json["tin"], 'tin')!,
    tinExpireDate: json["tin_expire_date"] != null
        ? DateTime.parse(
            safeParse<String>(json["tin_expire_date"], 'tin_expire_date')!,
          )
        : null,
    tinCertificateImage: safeParse<String>(
      json["tin_certificate_image"],
      'tin_certificate_image',
    )!,
    restaurantStatus: safeParse<int>(
      json["restaurant_status"],
      'restaurant_status',
    )!,
    foods: List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),
    ratings: List<int>.from(
      json["ratings"].map((x) => safeParse<int>(x, 'ratings_element')!),
    ),
    avgRating: safeParse<int>(json["avg_rating"].toInt(), 'avg_rating')!,
    ratingCount: safeParse<int>(json["rating_count"], 'rating_count')!,
    positiveRating: safeParse<int>(json["positive_rating"], 'positive_rating')!,
    priceStartsFrom: safeParse<int>(
      json["price_starts_from"],
      'price_starts_from',
    )!,
    customerOrderDate: safeParse<int>(
      json["customer_order_date"],
      'customer_order_date',
    )!,
    customerDateOrderSratus: safeParse<bool>(
      json["customer_date_order_sratus"],
      'customer_date_order_sratus',
    )!,
    instantOrder: safeParse<bool>(json["instant_order"], 'instant_order')!,
    halalTagStatus: safeParse<bool>(
      json["halal_tag_status"],
      'halal_tag_status',
    )!,
    isExtraPackagingActive: safeParse<bool>(
      json["is_extra_packaging_active"],
      'is_extra_packaging_active',
    )!,
    extraPackagingStatus: safeParse<bool>(
      json["extra_packaging_status"],
      'extra_packaging_status',
    )!,
    extraPackagingAmount: safeParse<int>(
      json["extra_packaging_amount"],
      'extra_packaging_amount',
    )!,
    deliveryFee: safeParse<String>(json["delivery_fee"], 'delivery_fee')!,
    currentOpeningTime: safeParse<String>(
      json["current_opening_time"],
      'current_opening_time',
    )!,
    isDineInActive: safeParse<bool>(
      json["is_dine_in_active"],
      'is_dine_in_active',
    )!,
    scheduleAdvanceDineInBookingDuration: safeParse<int>(
      json["schedule_advance_dine_in_booking_duration"],
      'schedule_advance_dine_in_booking_duration',
    )!,
    scheduleAdvanceDineInBookingDurationTimeFormat: safeParse<String>(
      json["schedule_advance_dine_in_booking_duration_time_format"],
      'schedule_advance_dine_in_booking_duration_time_format',
    )!,
    canEditOrder: safeParse<bool>(json["can_edit_order"], 'can_edit_order')!,
    gstStatus: safeParse<bool>(json["gst_status"], 'gst_status')!,
    gstCode: safeParse<String>(json["gst_code"], 'gst_code')!,
    freeDeliveryDistanceStatus: safeParse<bool>(
      json["free_delivery_distance_status"],
      'free_delivery_distance_status',
    )!,
    freeDeliveryDistanceValue: safeParse<String>(
      json["free_delivery_distance_value"],
      'free_delivery_distance_value',
    )!,
    logoFullUrl: safeParse<String>(json["logo_full_url"], 'logo_full_url')!,
    coverPhotoFullUrl: safeParse<String>(
      json["cover_photo_full_url"],
      'cover_photo_full_url',
    )!,
  );
}

class Food extends FoodEntity {
  Food({
    required super.id,
    required super.image,
    required super.name,
    required super.imageFullUrl,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: safeParse<int>(json["id"], 'id')!,
    image: safeParse<String>(json["image"], 'image')!,
    name: safeParse<String>(json["name"], 'name')!,
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
  );
}
