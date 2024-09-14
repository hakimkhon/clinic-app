import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/my_buttom.dart';
import 'package:clinicapp/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(IconsAssets.clinic),
                ),
                SizedBox(width: 8),
                Text(
                  "MZI Clinic",
                  style: TextStyle(
                    fontSize: 32,
                    color: MyColors.appTitleColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: ConstSizes.width(100, context),
              padding: EdgeInsets.all(ConstSizes.width(4, context)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tasdiqlash",
                    style: TextStyle(
                      fontSize: 26,
                      color: MyColors.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "SMS kod:",
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColors.subTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const MyTextField(hintText: "SMS kodni kiriting"),
                  TextButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: ConstSizes.width(100, context),
                      child: const Text(
                        "Nomerni o'zgartirish",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          color: MyColors.subTextColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
              child: MyButtom(
                title: "Tasdiqlash",
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    ClinicRouteNames.profile,
                    (predicate) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
