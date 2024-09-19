import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:clinicapp/presentation/widgets/custom_snackbar_widget.dart';
import 'package:flutter/material.dart';

class MockService {
  static void checkSMSCode(
      {required String phoneNumber, required String smsCode}) {
    for (UserModel element in MockData.users) {
      if (element.phoneNumber == phoneNumber) {
        if (element.smsCod == smsCode) {
          CustomSnackbarWidget.messenger(
              "Muvaffaqiyatli ro'yhatdan o'dingiz", Colors.blue);
          NavigationService.instance
              .navigateMyScreenAndRemoveUntil(routeName: ClinicRouteNames.home);
        } else {
          CustomSnackbarWidget.messenger("SMS kod noto'g'ri", Colors.red);
        }
      }
    }
  }
}
