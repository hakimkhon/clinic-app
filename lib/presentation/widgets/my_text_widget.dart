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
  }) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,        
      ),
      maxLines: 3,
    );
  }
}
