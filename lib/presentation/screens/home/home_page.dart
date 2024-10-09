import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/screens/home/widgets/calendar_widget.dart';
import 'package:clinicapp/presentation/screens/news/widgets/news_swiper_widget.dart';
import 'package:clinicapp/presentation/screens/select_client/widgets/client_list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: SafeArea(
        bottom: false,
        //SingleChildScrollView widgeti ekranni pastidan klavish chiqqanda ekranni balandligini o'zgartirmaslik uchun
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: ConstSizes.width(4),
                right: ConstSizes.width(1),
                top: ConstSizes.height(1),
                bottom: ConstSizes.height(1),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ClinicRouteNames.profile,
                      arguments: MockService.userModel);
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: ConstSizes.width(7),
                      backgroundImage:
                          NetworkImage(MockService.userModel.imageUrl),
                    ),
                    SizedBox(width: ConstSizes.width(2)),
                    SizedBox(
                      // width: ConstSizes.width(45),
                      child: Text(
                        "${MockService.userModel.name} ${MockService.userModel.surname}",
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 18,
                          color: MyColors.textColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          ClinicRouteNames.visitList,
                        );
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
            ),
            const NewsSwiperWidget(),
            const CalendarWidget(),
            const ClientListWidget(),
          ],
        ),
      ),
    );
  }
}
