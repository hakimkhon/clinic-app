import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class VisitListPage extends StatelessWidget {
  const VisitListPage({super.key});

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
                const HeaderIconsWidget(),
                MyText(
                  data: "Tashriflar ro'yhati",
                  size: 24,
                  fontWeight: FontWeight.w800,
                  left: ConstSizes.width(4),
                  bottom: ConstSizes.height(1),
                ),
                CustomButtonWidget(title: "Ketdi", onTap: () {}),
                CustomButtonWidget(title: "Keldi", onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
