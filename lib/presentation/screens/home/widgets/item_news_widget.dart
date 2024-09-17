import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemNewsWidget extends StatelessWidget {
  const ItemNewsWidget({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 30,
          top: 0,
          child: Image(
            image: NetworkImage(newsModel.iconUrl),
            width: 70,
          ),
        ),
        ZoomTapAnimation(
          onTap: () {
            Navigator.pushNamed(context, ClinicRouteNames.news);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            height: ConstSizes.height(24),
            margin: const EdgeInsets.only(left: 15, right: 15, top: 22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: MyColors.containerBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    newsModel.title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: MyColors.containerTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    newsModel.description,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: MyColors.containerSubTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ZoomTapAnimation(
                    onTap: () {
                      Navigator.pushNamed(context, ClinicRouteNames.news);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "To'liq o'qish",
                          style: TextStyle(
                            fontSize: 16,
                            color: MyColors.containerSubTitleColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: MyColors.containerSubTitleColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
