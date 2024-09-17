import 'package:card_swiper/card_swiper.dart';
import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/constant/urls.dart';
import 'package:clinicapp/presentation/screens/home/widgets/calendar_widget.dart';
import 'package:clinicapp/presentation/screens/home/widgets/client_list_widget.dart';
import 'package:clinicapp/presentation/screens/home/widgets/item_news_widget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 4, top: 10, bottom: 10),
              child: Row(
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      Navigator.pushNamed(context, ClinicRouteNames.profile);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        image: DecorationImage(
                          image: NetworkImage(Urls.humans2),
                        ),
                        border: Border.all(color: MyColors.containerSubTitleColor)
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  SizedBox(
                    width: ConstSizes.width(68),
                    child: const Text(
                      'Kharamov Nuriddin',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ClinicRouteNames.visitList);
                    },
                    icon: const Icon(
                      Icons.calendar_month_outlined,
                      size: 34,
                      color: MyColors.hindTextColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: ConstSizes.width(100),
              height: ConstSizes.height(26),
              child: Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 12),
                    child: Text(
                      'Yangiliklar:',
                      style: TextStyle(
                        fontSize: 16,
                        color: MyColors.containerSubTitleColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    height: ConstSizes.height(27),
                    width: ConstSizes.width(100),
                    padding: const EdgeInsets.only(top: 15),
                    child: Swiper(
                      pagination: const SwiperPagination(),
                      // control: const SwiperControl(),
                      autoplay: true,
                      autoplayDelay: 10000,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ZoomTapAnimation(
                          onTap: () {
                            Navigator.pushNamed(context, ClinicRouteNames.news);
                          },
                          child:
                              ItemNewsWidget(newsModel: MockData.news[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const CalendarWidget(),
            const ClientListWidget(),
          ],
        ),
      ),
    );
  }
}
