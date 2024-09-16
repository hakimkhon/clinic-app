import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const StakcedIcons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
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
              Container(
                height: 450,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ma'lumotlarni o'zgartirish",
                      style: TextStyle(
                        fontSize: 24,
                        color: MyColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextFieldWidget(
                      hintText: "Ism",
                      controller: textEditingController,
                    ),
                    CustomTextFieldWidget(
                      hintText: "Familiya",
                      controller: textEditingController,
                    ),
                    CustomButtonWidget(
                      title: "Rasm",
                      onTap: () {
                        // Navigator.pop(context);
                      },
                    ),
                    CustomTextFieldWidget(
                      hintText: "Telefon raqam",
                      controller: textEditingController,
                    ),
                    
                    CustomButtonWidget(
                      title: "Tasdiqlash",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
