import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:bloc_practice1/provider_structure/config/extension/media_query_extension.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_color.dart';
import 'package:bloc_practice1/provider_structure/core/util/my_dimens.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/food_campaign_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';

class HomeFoodCampaign extends StatelessWidget {
  const HomeFoodCampaign({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<HomeProvider>(context);
    final items = data.foodCampaignList;
    return SizedBox(
      height: context.screenHeight * .15,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Column(
          children: [
            // section title
            MyDimens().getTitleAndViewAll("Food Campaign", context),
            // food list
            Expanded(
              child: data.isLoadingCampaign
                  ? MyDimens.getLoadingIndication
                  : items.isEmpty
                  ? MyDimens.getNoItemText
                  : ListView.builder(
                      clipBehavior: Clip.none,
                      scrollDirection: Axis.horizontal,
                      itemCount: items.length,
                      itemBuilder: (context, i) =>
                          HomeFoodCampaignItem(item: items[i]),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeFoodCampaignItem extends StatelessWidget {
  const HomeFoodCampaignItem({super.key, required this.item});
  final FoodCampaignEntity item;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * .6,
      margin: EdgeInsets.only(left: 12.w),
      padding: EdgeInsets.all(5.h),
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
            width: context.screenWidth * .25,
            decoration: BoxDecoration(
              color: MyColor.gray200,
              borderRadius: BorderRadius.circular(7.r),
              image: DecorationImage(
                // image: AssetImage(MyImage.profilePic),
                image: CachedNetworkImageProvider(
                  item.imageFullUrl, //"https://picsum.photos/200/100",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // body
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
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
                ),
                // restaturant
                Text(
                  item.restaurantName,
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 5.sp,
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
                // price, discount & add icon
                Row(
                  children: [
                    // price - discount
                    Text(
                      "\$${item.price - item.discount}  ",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // discount
                    Text(
                      "\$${item.discount}",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    Spacer(),
                    // add icon
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
