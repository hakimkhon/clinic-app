import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnlyForRegistrationStacked extends StatelessWidget {
  const OnlyForRegistrationStacked({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ConstSizes.width(100, context),
      height: ConstSizes.height(100, context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(ImageAssets.topLeftImage),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(ImageAssets.bottomRightImage),
          ),
        ],
      ),
    );
  }
}
