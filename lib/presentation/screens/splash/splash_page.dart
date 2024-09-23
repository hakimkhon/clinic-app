import 'dart:async';

import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        start;
      },
    );
    super.initState();
  }

  get start async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? phone = prefs.getString('phone');
    if (phone == null) {
      NavigationService.instance.navigateMyScreenAndRemoveUntil(
          routeName: ClinicRouteNames.registration);
    } else {
      MockService.userModel =
          MockData.users.firstWhere((element) => element.phoneNumber == phone);
      NavigationService.instance
          .navigateMyScreenAndRemoveUntil(routeName: ClinicRouteNames.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: Center(
        child: Lottie.asset(LottieAssets.myClinick),
      ),
    );
  }
}
