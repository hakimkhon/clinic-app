import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.icon = false,
    this.color = MyColors.btnBackgroundColor,
    this.bottomPadding = 8,
    this.size = 16,
  });
  final String title;
  final Function onTap;
  final bool icon;
  final Color color;
  final double bottomPadding;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ZoomTapAnimation(
          onTap: () {
            onTap();
          },
          child: Container(
            height: ConstSizes.height(7),
            margin: EdgeInsets.only(
                left: ConstSizes.width(4),
                right: ConstSizes.width(4),
                bottom: bottomPadding),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color),
            child: Text(
              title,
              style: TextStyle(
                fontSize: size,
                color: MyColors.btnTextColor,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.lexendTera,
                letterSpacing: -2,
              ),
            ),
          ),
        ),
        if (icon)
          const Positioned(
            right: 24,
            top: 18,
            child: Icon(
              Icons.chevron_right,
              color: Colors.white,
              size: 24,
            ),
          )
      ],
    );
  }
}
