import 'package:card_swiper/card_swiper.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/constant/urls.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({super.key});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ConstSizes.width(100, context),
      height: ConstSizes.height(30, context),
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25.0, top: 12),
            child: Text(
              'Yangiliklar:',
              style: TextStyle(
                fontSize: 18,
                color: MyColors.containerSubTitleColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ZoomTapAnimation(
            onTap: () {
              Navigator.pushNamed(context, ClinicRouteNames.news);
            },
            child: Container(
              height: ConstSizes.height(27, context),
              padding: const EdgeInsets.only(top: 15),
              child: Swiper(
                pagination: const SwiperPagination(),
                // control: const SwiperControl(),
                autoplay: true,
                autoplayDelay: 10000,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Positioned(
                        right: 30,
                        top: -10,
                        child: Image(
                          image: NetworkImage(Urls.iconNews1),
                          width: 80,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        height: ConstSizes.height(24, context),
                        margin:
                            const EdgeInsets.only(left: 15, right: 15, top: 22),
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
                              const Text(
                                'Corona virusga davo topildi!',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: MyColors.containerTitleColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Text(
                                'Amerikalik olimlar Corona, yani Covid-19 uchunC ovid-19 uchun vaksina olimlar Corona, yani Covid-19 uchun vaksina o’ylab topishti, O’zbekiston davlat sog’liqni saqlash vazirligi O’zbekiston aholisiga ham shu vaksinani qabul qilishlarini aytishmoqda.',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
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
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
