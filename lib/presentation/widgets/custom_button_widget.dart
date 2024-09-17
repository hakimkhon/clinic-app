import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.icon = false,
    this.color = MyColors.btnBackgroundColor,
  });
  final String title;
  final Function onTap;
  final bool icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            width: ConstSizes.width(100),
            height: ConstSizes.height(7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: color),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: MyColors.btnTextColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          if (icon)
            const Positioned(
              right: 8,
              top: 18,
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 28,
              ),
            )
        ],
      ),
      onTap: () {
        onTap();
      },
    );
  }
}
