import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:flutter/material.dart';

class DetailCalendar extends StatelessWidget {
  const DetailCalendar({super.key, required this.day});
  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderIconsWidget(),
            Center(
                child: MyText(
              data: "${day.day}.${day.month}.${day.year}",
              size: 60,
              color: Colors.blue,
            )),
          ],
        ),
      ),
    );
  }
}
