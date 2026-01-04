import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_color.dart';
import 'package:bloc_practice1/provider_structure/core/util/my_dimens.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/category_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<HomeProvider>(context);
    final items = data.categoryList;
    return Column(
      children: [
        // section title
        MyDimens().getTitleAndViewAll("Categories", context),
        // category list
        data.isLoadingCategory
            ? MyDimens.getLoadingIndication
            : items.isEmpty
            ? MyDimens.getNoItemText
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    items.length,
                    (i) => HomeCategoryItem(item: items[i]),
                  ),
                ),
              ),
      ],
    );
  }
}

class HomeCategoryItem extends StatelessWidget {
  const HomeCategoryItem({super.key, required this.item});
  final CategoryEntity item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      margin: EdgeInsets.only(left: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 5.h,
        children: [
          // image
          Container(
            height: 44.w,
            width: 46.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.r),
              boxShadow: MyDimens.getShadow,
              color: Colors.white,
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  item.imageFullUrl, //"https://picsum.photos/500/50",
                ),
                fit: BoxFit.fill,
              ),
            ),
            // child: Image.asset(MyImage.demoCategory),
          ),
          // title
          Text(
            item.name,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.w900,
              color: MyColor.gray900,
            ),
          ),
        ],
      ),
    );
  }
}
