import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.topText = "",
    this.maxLines = 1,
    this.type = TextInputType.text,
  });
  final String topText;
  final String hintText;
  final int maxLines;
  final TextInputType type;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: ConstSizes.width(4),
        right: ConstSizes.width(4),
        bottom: ConstSizes.height(1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 1),
            child: Text(
              topText == "" ? "$hintText:" : "$topText:",
              style: const TextStyle(
                fontSize: 15,
                color: MyColors.subTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextField(
            controller: controller,
            keyboardType: type,
            maxLines: maxLines,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: MyColors.borderTextFieldColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 17,
                color: MyColors.hindTextColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
