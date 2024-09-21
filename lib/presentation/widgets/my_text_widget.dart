import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';

class MyText {
  static text({
    required String data,
    double size = 14,
    Color color = MyColors.textColor,
    FontWeight fontWeight = FontWeight.bold,
    String fontFamily = AppFonts.lato,
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
      child: Text(
        data,
        style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: fontWeight,
          fontFamily: fontFamily,        
        ),
        maxLines: 3,
      ),
    );
  }
}
