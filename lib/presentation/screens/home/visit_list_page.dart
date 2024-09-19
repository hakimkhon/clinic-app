import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class VisitListPage extends StatelessWidget {
  const VisitListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const StakcedIcons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 40,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: ConstSizes.width(5), bottom: ConstSizes.height(1)),
                    child: const Text(
                      "Tashriflar ro'yhati",
                      style: TextStyle(
                        fontSize: 24,
                        color: MyColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  CustomButtonWidget(title: "Ketdi", onTap: () {}),
                  CustomButtonWidget(title: "Keldi", onTap: () {}),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
