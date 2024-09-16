import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            const StakcedIcons(),
            Column(
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
                      CustomTextFieldWidget(
                        hintText: "Telefon raqam",
                        controller: phoneNumberController,
                        type: TextInputType.phone,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
                  child: CustomButtonWidget(
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
          ],
        ),
      ),
    );
  }
}
