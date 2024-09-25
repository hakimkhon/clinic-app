import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class NewsAddPage extends StatefulWidget {
  const NewsAddPage({super.key});

  @override
  State<NewsAddPage> createState() => _NewsAddPageState();
}

class _NewsAddPageState extends State<NewsAddPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textTitle = TextEditingController();
    TextEditingController subTitle = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const StakcedIcons(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderIconsWidget(),
                  MyText(
                    data: "Yangilik qo'shish",
                    size: 24, 
                    fontWeight: FontWeight.w800,
                    left: ConstSizes.width(4),
                    bottom: ConstSizes.height(1),
                  ),
                  CustomTextFieldWidget(
                    hintText: "Sarlavha",
                    controller: textTitle,
                  ),
                  CustomTextFieldWidget(
                    hintText: "Matn",
                    controller: subTitle,
                    maxLines: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: ConstSizes.height(40),
                    child: CustomButtonWidget(
                      title: "Qo'shish",
                      bottomPadding: 15,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
