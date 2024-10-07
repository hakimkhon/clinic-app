import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/screens/select_date/item_detail_calendar_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class DetailCalendar extends StatelessWidget {
  const DetailCalendar({super.key, required this.day});
  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const StakcedIcons(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderIconsWidget(pushNamed: ClinicRouteNames.visitList),
                MyText(
                  data: "${day.day} ${MockData.month[day.month - 1]} uchun ro'yhat",
                  size: 20,
                  color: MyColors.textColor,
                  left: ConstSizes.width(4),
                ),
                const ItemDetailCalendarWidget(),
                const ItemDetailCalendarWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
