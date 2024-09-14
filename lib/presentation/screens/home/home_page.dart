import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/my_buttom.dart';
import 'package:clinicapp/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    "Ro'yhatdan o'tish",
                    style: TextStyle(
                      fontSize: 26,
                      color: MyColors.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Telefon raqam:",
                    style: TextStyle(
                      fontSize: 16,
                      color: MyColors.subTextColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const MyTextField(hintText: "Telefon raqam"),
                  TextButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: ConstSizes.width(100, context),
                      child: const Text(
                        "Hisobingiz bormi?",
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
                title: "SMS yuborish",
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    ClinicRouteNames.auth,
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
