import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MyButtom extends StatelessWidget {
  const MyButtom({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Container(
        alignment: Alignment.center,
        width: ConstSizes.width(100, context),
        height: ConstSizes.height(8, context),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors.btnBackgroundColor),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            color: MyColors.btnTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
