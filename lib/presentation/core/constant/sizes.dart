import 'package:flutter/material.dart';

class ConstSizes {
  //The purpose of dividing by 100 is to express it as a percentage
  static double height(double sizeHeight, BuildContext context) {
    return MediaQuery.of(context).size.height * sizeHeight / 100;
  }

  static double width(double sizeWidth, BuildContext context) {
    return MediaQuery.of(context).size.width * sizeWidth / 100;
  }
}