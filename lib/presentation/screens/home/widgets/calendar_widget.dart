import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Qaysi kunni ko'rmoqchisiz?",
              style: TextStyle(
                fontSize: 16,
                color: MyColors.containerSubTitleColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ZoomTapAnimation(
            onTap: () {
              Navigator.pushNamed(context, ClinicRouteNames.selectDate);
            },
            child: Container(
              width: ConstSizes.width(100),
              height: ConstSizes.height(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: MyColors.containerBackgroundColor),
            ),
          ),
        ],
      ),
    );
  }
}
