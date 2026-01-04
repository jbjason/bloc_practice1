import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:bloc_practice1/provider_structure/config/extension/media_query_extension.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_color.dart';
import 'package:bloc_practice1/provider_structure/core/util/my_dimens.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/popular_product_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';

class HomePopularFoods extends StatelessWidget {
  const HomePopularFoods({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<HomeProvider>(context);
    final items = data.popularItem;
    return SizedBox(
      height: context.screenHeight * .25,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          children: [
            // section title
            MyDimens().getTitleAndViewAll("Popular Food Nearby", context),
            // food list
            Expanded(
              child: data.isLoadingPopular
                  ? MyDimens.getLoadingIndication
                  : (items == null || items.products.isEmpty)
                  ? MyDimens.getNoItemText
                  : ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: items.products.length,
                      itemBuilder: (context, i) =>
                          HomePopularFoodsItem(item: items.products[i]),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePopularFoodsItem extends StatelessWidget {
  const HomePopularFoodsItem({super.key, required this.item});
  final ProductEntity item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .375,
      margin: EdgeInsets.only(left: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.r),
        boxShadow: MyDimens.getShadow,
      ),
      child: Column(
        children: [
          // image
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: MyColor.gray200,
                borderRadius: BorderRadius.circular(7.r),
                image: DecorationImage(
                  //image: AssetImage(MyImage.profilePic),
                  image: CachedNetworkImageProvider(
                    item.imageFullUrl, // "https://picsum.photos/200/100",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // details
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
            child: Column(
              spacing: 2.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Text(
                  item.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                // restaurant
                Text(
                  item.restaurantName,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 5.sp,
                    color: MyColor.gray500,
                  ),
                ),
                // price & average rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // price
                    Text(
                      "\$${item.price}",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // rating
                    Text(
                      "★ ${item.avgRating.toStringAsFixed(1)}",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: MyColor.success,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
