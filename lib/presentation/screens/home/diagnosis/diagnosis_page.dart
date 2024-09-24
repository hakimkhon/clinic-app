import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const StakcedIcons(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderIconsWidget(),
                MyText(
                  data: "1 Yanvarda qo'yilgan tashxis",
                  size: 24,
                  fontWeight: FontWeight.w800,
                  left: ConstSizes.width(4),
                ),
                MyText(
                  data: MockData.diagnosis[0].fullFormDiagnos,
                  size: 16,
                  fontFamily: AppFonts.lato,
                  color: MyColors.textButtonColor,
                  fontWeight: FontWeight.w400,
                  left: ConstSizes.width(4),
                  right: ConstSizes.width(4),
                  top: ConstSizes.height(1),
                  bottom: ConstSizes.height(1),
                ),
                Center(
                  child: Image(
                    image: NetworkImage(MockData.diagnosis[0].imgUrl),
                  ),
                ),
                const Spacer(),
                CustomButtonWidget(
                  title: "Saqlash",
                  bottomPadding: 15,
                  onTap: () {
                    Navigator.pop(context);
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
