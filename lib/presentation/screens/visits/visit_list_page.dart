import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class VisitListPage extends StatelessWidget {
  const VisitListPage({super.key});

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
                  data: LangAssets.visitList,
                  size: 24,
                  fontWeight: FontWeight.w800,
                  left: ConstSizes.width(4),
                  bottom: ConstSizes.height(2),
                ),
                CustomButtonWidget(
                    title: LangAssets.went,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                CustomButtonWidget(
                    title: LangAssets.come,
                    onTap: () {
                      Navigator.pop(context);
                    }),
                const Spacer(),
                //Namuna uchun
                Center(
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "MZI Clinik ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: "dasturi ",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.blue,
                          ),
                        ),
                        TextSpan(
                          text: "test rejimda ishlamoqda!",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
