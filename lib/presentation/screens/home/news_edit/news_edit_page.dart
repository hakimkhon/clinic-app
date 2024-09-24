import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class NewsEditPage extends StatefulWidget {
  const NewsEditPage({super.key});

  @override
  State<NewsEditPage> createState() => _NewsEditPageState();
}

class _NewsEditPageState extends State<NewsEditPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textTitle = TextEditingController();
    TextEditingController subTitle = TextEditingController();
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
                  data: "Yangilikni o'zgatrirish",
                  size: 24,
                  fontWeight: FontWeight.w800,
                  left: ConstSizes.width(4),
                  bottom: ConstSizes.height(1),
                ),
                CustomTextFieldWidget(
                  hintText: "Sarlavha",
                  controller: textTitle,
                ),
                CustomButtonWidget(title: "Rasm", onTap: () {}),
                CustomTextFieldWidget(
                  hintText: "Matn",
                  controller: subTitle,
                  maxLines: 10,
                ),
                const Spacer(),
                CustomButtonWidget(
                  title: "Qo'shish",
                  bottomPadding: 15,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
