import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/screens/auth/only_for_registration_stacked.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            const OnlyForRegistrationStacked(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: ConstSizes.height(10),
                  child: const Image(
                    image: AssetImage(IconsAssets.logoApp),
                  ),
                ),
                SizedBox(
                  height: ConstSizes.height(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        data: "Ro'yhatdan o'tish",
                        size: 26,
                        fontWeight: FontWeight.w800,
                        left: ConstSizes.width(4),
                        bottom: ConstSizes.height(0.5),
                      ),
                      CustomTextFieldWidget(
                        hintText: "Telefon raqam",
                        controller: phoneNumberController,
                        type: TextInputType.phone,
                      ),
                    ],
                  ),
                ),
                CustomButtonWidget(
                  title: "SMS yuborish",
                  bottomPadding: 15,
                  size: 18,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ClinicRouteNames.ratification,
                      arguments: phoneNumberController.text,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
