import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:clinicapp/presentation/widgets/custom_snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockService {
  static late UserModel userModel;

  static Future<void> checkSMSCode(
      {required String phoneNumber, required String smsCode}) async {
    for (UserModel element in MockData.users) {
      if (element.phoneNumber == phoneNumber) {
        if (element.smsCod == smsCode) {
          MockService.userModel = element;
          CustomSnackbarWidget.messenger(
            "Muvaffaqiyatli ro'yhatdan o'dingiz",
            Colors.blue,
          );
          final SharedPreferences preferences =
              await SharedPreferences.getInstance();
          preferences.setString("phone", phoneNumber);
          NavigationService.instance.navigateMyScreenAndRemoveUntil(
            routeName: ClinicRouteNames.home,
          );
        } else {
          CustomSnackbarWidget.messenger("SMS kod noto'g'ri", Colors.red);
        }
      }
    }
  }

  static late NewsModel newsModel;
  static void newsCheck({required String title, required String subTitle}) {
    for (NewsModel element in MockData.news) {
      if (element.title == title) {
        MockService.newsModel = element;
        NavigationService.instance.navigateMyScreenAndRemoveUntil(
          routeName: ClinicRouteNames.newsEdit,
        );
      }
    }
  }
}
