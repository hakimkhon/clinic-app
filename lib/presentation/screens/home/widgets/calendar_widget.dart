import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: MyColors.containerBackgroundColor,
            ),
            child: TableCalendar(
              onDaySelected: (selectedDay, focusedDay) {
                //selectedDay bilan focusedDay farqi va qachon ishlatiladi
                Navigator.pushNamed(context, ClinicRouteNames.detail,
                    arguments: focusedDay);
              },
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(),
              lastDay: DateTime(2030),
              daysOfWeekVisible: false,
              rowHeight: ConstSizes.height(5),
              calendarStyle: CalendarStyle(
                outsideDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white.withOpacity(0.6),
                ),
                outsideTextStyle: const TextStyle(color: Colors.black),
                disabledDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white.withOpacity(0.4),
                ),
                defaultDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                todayDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                todayTextStyle: const TextStyle(color: Colors.black),
                weekendDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.white,
                ),
                weekendTextStyle: const TextStyle(color: Colors.black),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextFormatter: (date, locale) {
                  return MockData.month[date.month - 1];
                },
                titleTextStyle:
                    const TextStyle(color: Colors.blue, fontSize: 20),
                leftChevronIcon: const Icon(Icons.arrow_back_outlined),
                rightChevronIcon: const Icon(Icons.arrow_forward_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
