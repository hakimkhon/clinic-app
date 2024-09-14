import 'package:flutter/material.dart';

class ConstSizes{
  //The purpose of dividing by 100 is to express it as a percentage
  static double height(double sizeHeight, BuildContext context) {
    return MediaQuery.of(context).size.height * sizeHeight / 100;
  }

  static double width(double sizeWidth, BuildContext context) {
    return MediaQuery.of(context).size.width * sizeWidth / 100;
  }
}
class MyColors {
  static const bgColor = Color.fromRGBO(0, 0, 0, 0.6);
  static const darkColor = Color.fromRGBO(25, 26, 29, 1);
  static const innerColor = Color.fromRGBO(30, 30, 31, 1);
  static const dropColor = Color.fromRGBO(25, 26, 29, 1);
  static const textColor = Color.fromRGBO(153, 153, 153, 1);
  static const textColorBgWight = Color.fromRGBO(57, 57, 57, 1);
    static const bgDarkColor = Color.fromARGB(255, 35, 40, 45);
  static const selectedItemColor = Color.fromARGB(255, 160, 10, 10);

}