import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:bloc_practice1/provider_structure/config/extension/media_query_extension.dart';
import 'package:bloc_practice1/provider_structure/core/constants/my_color.dart';
import 'package:bloc_practice1/provider_structure/core/util/my_dimens.dart';
import 'package:bloc_practice1/provider_structure/feature/home/domain/entities/home_banner_entity.dart';
import 'package:bloc_practice1/provider_structure/feature/home/prensentation/provider/home_provider.dart';

class HomeBanners extends StatefulWidget {
  const HomeBanners({super.key});
  @override
  State<HomeBanners> createState() => _HomeBannersState();
}

class _HomeBannersState extends State<HomeBanners> {
  final _controller = PageController(initialPage: 1, viewportFraction: .8);
  int _currentBanner = 1;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<HomeProvider>(context);
    final items = data.bannerList;
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      height: context.screenHeight * .12,
      width: context.screenWidth,
      child: Column(
        spacing: 5.h,
        children: [
          // banners
          Expanded(
            child: data.isLoadingBanners
                ? MyDimens.getLoadingIndication
                : items.isEmpty
                ? MyDimens.getNoItemText
                : _getPageView(items),
          ),
          // counters
          _getCounter(items.length),
        ],
      ),
    );
  }

  Widget _getPageView(List<HomeBannerEntity> items) {
    return PageView.builder(
      controller: _controller,
      itemCount: items.length,
      onPageChanged: (i) => setState(() => _currentBanner = i),
      itemBuilder: (context, i) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              items[i].imageFullUrl, //"https://picsum.photos/600/200",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Row _getCounter(int length) => Row(
    spacing: 5.w,
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(length, (i) {
      final bool isSelected = i == _currentBanner;
      return Container(
        height: isSelected ? 5.w : 2.w,
        width: isSelected ? 5.w : 2.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? MyColor.success : MyColor.gray500,
        ),
      );
    }),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
