class CategoryEntity {
  final int id;
  final String name;
  final String image;
  final int parentId;
  final int position;
  final int status;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int priority;
  final String slug;
  final int productsCount;
  final int childesCount;
  final String orderCount;
  final String imageFullUrl;

  const CategoryEntity({
    required this.id,
    required this.name,
    required this.image,
    required this.parentId,
    required this.position,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.priority,
    required this.slug,
    required this.productsCount,
    required this.childesCount,
    required this.orderCount,
    required this.imageFullUrl,
  });
}
