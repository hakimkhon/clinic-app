import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/screens/news/widgets/item_news_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewsSwiperWidget extends StatelessWidget {
  const NewsSwiperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return SizedBox(
      height: ConstSizes.height(22),
      width: ConstSizes.width(100),
      child: Stack(
        children: [
          Positioned(
            top: -10,
            child: Container(
              height: ConstSizes.height(22),
              width: ConstSizes.width(100),
              padding: EdgeInsets.only(top: ConstSizes.height(1)),
              child: PageView.builder(
                controller: pageController,
                itemCount: MockData.news.length,
                itemBuilder: (context, index) {
                  return ItemNewsWidget(newsModel: MockData.news[index]);
                },
              ),
            ),
          ),
          //o'rtasini topish uchun
          Positioned(
            bottom: ConstSizes.height(2),
            left: ConstSizes.width(38),
            child: SmoothPageIndicator(
              controller: pageController,
              count: MockData.news.length,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
                dotHeight: 6,
                dotWidth: 10,
                spacing: 6,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: ConstSizes.width(5),
              top: ConstSizes.width(1),
            ),
            child: Text(
              LangAssets.news,
              style: const TextStyle(
                fontSize: 16,
                color: MyColors.containerSubTitleColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
