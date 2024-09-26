import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
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
  TextEditingController textTitle = TextEditingController();
  TextEditingController subTitle = TextEditingController();

  @override
  void initState() {
    textTitle.text = MockService.newsModel.title;
    subTitle.text = MockService.newsModel.description;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const StakcedIcons(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderIconsWidget(),
                  MyText(
                    data: LangAssets.changNews,
                    size: 24,
                    fontWeight: FontWeight.w800,
                    left: ConstSizes.width(4),
                    bottom: ConstSizes.height(1),
                  ),
                  CustomTextFieldWidget(
                    hintText: LangAssets.title,
                    controller: textTitle,
                  ),
                  CustomTextFieldWidget(
                    hintText: LangAssets.text,
                    controller: subTitle,
                    maxLines: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: ConstSizes.height(45),
                    child: CustomButtonWidget(
                      title: LangAssets.add,
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
