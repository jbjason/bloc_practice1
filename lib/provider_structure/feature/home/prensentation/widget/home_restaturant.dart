import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:bloc_practice1/provider_structure/config/extension/media_query_extension.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_color.dart';
import 'package:bloc_practice1/provider_structure/core/util/my_dimens.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/home_restaurant_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';

class HomeRestaturant extends StatelessWidget {
  const HomeRestaturant({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<HomeProvider>(context);
    final items = data.homeRestaurant;
    return Column(
      children: [
        // section title
        MyDimens().getTitleAndViewAll("Restaurants", context),
        // restaurant list
        data.isLoadingRestaurant
            ? MyDimens.getLoadingIndication
            : (items == null || items.restaurants.isEmpty)
            ? MyDimens.getNoItemText
            : ListView.builder(
                clipBehavior: Clip.none,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: items.restaurants.length,
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                itemBuilder: (context, i) =>
                    HomeRestaturantItem(item: items.restaurants[i]),
              ),
      ],
    );
  }
}

class HomeRestaturantItem extends StatelessWidget {
  const HomeRestaturantItem({super.key, required this.item});
  final RestaurantElementEntity item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .35,
      height: context.screenWidth * .22,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7.r),
        boxShadow: MyDimens.getShadow,
      ),
      child: Row(
        spacing: 10.w,
        children: [
          // image
          Container(
            width: context.screenWidth * .22,
            decoration: BoxDecoration(
              color: MyColor.gray200,
              borderRadius: BorderRadius.circular(7.r),
              image: DecorationImage(
                // image: AssetImage(MyImage.profilePic),
                image: CachedNetworkImageProvider(
                  item.coverPhotoFullUrl,
                  //"https://picsum.photos/200/100",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // body
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // title
                      Text(
                        item.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // sub -title
                      Text(
                        item.slug,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 8.sp,
                          color: MyColor.gray500,
                        ),
                      ),
                      // rating & count
                      Text(
                        "${"★" * (item.avgRating == 0 ? 5 : item.avgRating)} ${item.ratingCount}",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: MyColor.success,
                        ),
                      ),
                      // price_start_from
                      Text(
                        " \$${item.priceStartsFrom} - \$",
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // favorite & add icon
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border, size: 18.w),
                    Icon(Icons.add, size: 18.w),
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
