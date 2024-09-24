import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.data,
    this.color = MyColors.textColor,
    this.fontWeight = FontWeight.w400,
    this.fontFamily = AppFonts.lato,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.bottom = 0,
    this.maxLines = 20,
    this.size = 14,
    this.letterSpacing = 0
  });
  final String data;
  final Color color;
  final double size;
  final double right;
  final double left;
  final double top;
  final double bottom;
  final FontWeight fontWeight;
  final String fontFamily;
  final int maxLines;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: Text(
        data,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          letterSpacing: letterSpacing,
          
        ),
        maxLines: maxLines,
      
      ),
    );
  }
}
