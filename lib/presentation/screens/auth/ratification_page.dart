import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
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
                        data: LangAssets.confirm,
                        size: 26,
                        fontWeight: FontWeight.w800,
                        left: ConstSizes.width(4),
                        bottom: ConstSizes.height(0.5),
                      ),
                      CustomTextFieldWidget(
                        hintText: LangAssets.sendEter,
                        topText: LangAssets.sendCod,
                        controller: smsCodeController,
                        type: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                CustomButtonWidget(
                  title: LangAssets.confirm,
                  bottomPadding: 15,
                  size: 18,
                  onTap: () {
                    MockService.checkSMSCode(
                      phoneNumber: widget.phoneNumber,
                      smsCode: smsCodeController.text,
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
