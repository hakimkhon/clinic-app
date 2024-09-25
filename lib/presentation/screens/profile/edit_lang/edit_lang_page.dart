import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EditLangPage extends StatelessWidget {
  const EditLangPage({super.key});

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
                  data: LangAssets.changLang,
                  size: 24,
                  fontWeight: FontWeight.w800,
                  left: ConstSizes.width(4),
                  bottom: ConstSizes.height(1),
                ),
                CustomButtonWidget(
                  size: 18,
                  title: LangAssets.langUz,
                  onTap: () {
                    context.setLocale(const Locale('uz', 'UZ'));
                    // setState(() {});
                    // Navigator.pop(context);
                  },
                ),
                CustomButtonWidget(
                  size: 18,
                  title: LangAssets.langRu,
                  onTap: () {
                    context.setLocale(const Locale('ru', 'RU'));
                    // setState(() {});
                    // Navigator.pop(context);
                  },
                ),
                CustomButtonWidget(
                  size: 18,
                  title: LangAssets.langEn,
                  onTap: () {
                    context.setLocale(const Locale('en', 'EN'));
                    // setState(() {});
                    // Navigator.pop(context);
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
