import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';

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
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          // height: ConstSizes.height(26),
          margin: EdgeInsets.only(
            left: ConstSizes.width(4),
            right: ConstSizes.width(4),
            top: ConstSizes.height(3),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: MyColors.containerBackgroundColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ConstSizes.width(4),
              vertical: ConstSizes.height(1),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ClinicRouteNames.news,
                        arguments: newsModel);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        LangAssets.more,
                        style: const TextStyle(
                          fontSize: 15,
                          color: MyColors.containerSubTitleColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Icon(
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
        Positioned(
          right: 30,
          top: 0,
          child: Image(
            image: NetworkImage(newsModel.iconUrl),
            width: 70,
          ),
        ),
      ],
    );
  }
}
