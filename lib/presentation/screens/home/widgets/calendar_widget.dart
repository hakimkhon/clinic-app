import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MyText(
          //   data: "Qaysi kunni ko'rmoqchisiz?",
          //   size: 15,
          //   color: MyColors.containerSubTitleColor,
          //   fontWeight: FontWeight.w400,
          //   left: ConstSizes.width(2),
          // ),
          Padding(
            padding: EdgeInsets.only(left: ConstSizes.width(2)),
            child: Text(
              LangAssets.selectData,
              style: const TextStyle(
                fontSize: 16,
                color: MyColors.containerSubTitleColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          GestureDetector(
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
