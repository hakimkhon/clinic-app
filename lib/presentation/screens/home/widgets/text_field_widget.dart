import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.topText = "",
    required this.controller,
    this.type = TextInputType.text,
  });
  final String topText;
  final String hintText;
  final TextInputType type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText == "" ? "$hintText:" : "$topText:",
          style: const TextStyle(
            fontSize: 14,
            color: MyColors.subTextColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextField(
          maxLines: 15,
          controller: controller,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: MyColors.borderTextFieldColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                    // color: MyColors.borderTextFieldColor,
                    ),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: MyColors.hindTextColor,
                fontWeight: FontWeight.w400,
              )),
          keyboardType: type,
        ),
      ],
    );
  }
}
