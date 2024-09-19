import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const StakcedIcons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ClinicRouteNames.newsAdd);
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(88),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: ConstSizes.width(60),
                        child: Text(
                          newsModel.title,
                          style: const TextStyle(
                            fontSize: 24,
                            color: MyColors.textColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.lexendTera,
                          ),
                        ),
                      ),
                      Center(
                        child: Image(
                          width: 140,
                          image: NetworkImage(
                            newsModel.iconUrl,
                          ),
                        ),
                      ),
                      Text(
                        newsModel.description,
                        style: const TextStyle(
                          fontSize: 16,
                          color: MyColors.subTextColor,
                          fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.lato,

                        ),
                      ),
                      const Spacer(),
                      CustomButtonWidget(
                        title: "O'zgartirish",
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            ClinicRouteNames.newsAdd,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
