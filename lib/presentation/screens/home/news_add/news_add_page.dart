import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/screens/home/widgets/text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
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
      body: Stack(
        children: [
          const StakcedIcons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ConstSizes.height(4)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                width: ConstSizes.width(100),
                height: ConstSizes.height(88),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "Yangilik qo'shish",
                        style: TextStyle(
                          fontSize: 24,
                          color: MyColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomTextFieldWidget(
                        hintText: "Sarlavha",
                        controller: textTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: CustomButtonWidget(title: "Rasm", onTap: () {}),
                      ),
                      TextFieldWidget(
                          hintText: "Matn", controller: subTitle),
                      const Spacer(),
                      CustomButtonWidget(title: "Qo'shish", onTap: () {})
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
