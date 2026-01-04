

import 'package:bloc_practice1/provider_structure/core/error/safe_parse.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/category_entity.dart';

class Category extends CategoryEntity {
  Category({
    required super.id,
    required super.name,
    required super.image,
    required super.parentId,
    required super.position,
    required super.status,
    required super.createdAt,
    required super.updatedAt,
    required super.priority,
    required super.slug,
    required super.productsCount,
    required super.childesCount,
    required super.orderCount,
    required super.imageFullUrl,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    image: safeParse<String>(json["image"], 'image')!,
    parentId: safeParse<int>(json["parent_id"], 'parent_id')!,
    position: safeParse<int>(json["position"], 'position')!,
    status: safeParse<int>(json["status"], 'status')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    priority: safeParse<int>(json["priority"], 'priority')!,
    slug: safeParse<String>(json["slug"], 'slug')!,
    productsCount: safeParse<int>(json["products_count"], 'products_count')!,
    childesCount: safeParse<int>(json["childes_count"], 'childes_count')!,
    orderCount: safeParse<String>(json["order_count"], 'order_count')!,
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
  );
}
