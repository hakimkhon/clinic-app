import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text_widget.dart';
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText.text(
                    data: "Ma'lumotlarni o'zgartirish",
                    size: 24,
                    fontWeight: FontWeight.w800,
                    left: 15,
                    bottom: 5
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
            ],
          ),
        ],
      ),
    );
  }
}
