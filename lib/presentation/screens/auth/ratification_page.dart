import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class RatificationPage extends StatefulWidget {
  const RatificationPage({
    super.key,
    required this.phoneNumber,
  });
  final String phoneNumber;

  @override
  State<RatificationPage> createState() => _RatificationPageState();
}

class _RatificationPageState extends State<RatificationPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController smsCodeController = TextEditingController();
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
                SizedBox(
                  height: ConstSizes.height(10),
                  child: const Row(
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
                ),
                Container(
                  height: ConstSizes.height(14),
                  padding:
                      EdgeInsets.symmetric(horizontal: ConstSizes.width(4)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      CustomTextFieldWidget(
                        hintText: "SMS kodni kiring",
                        topText: "SMS kod",
                        controller: smsCodeController,
                        type: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                CustomButtonWidget(
                  title: "Tasdiqlash",
                  bottomPadding: 25,
                  size: 18,
                  onTap: () {
                    MockService.checkSMSCode(
                      phoneNumber: widget.phoneNumber,
                      smsCode: smsCodeController.text,
                    );
                    // Navigator.pushNamed(
                    //   context,
                    //   ClinicRouteNames.home,
                    //   arguments: smsCodeController.text
                    // );
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
