import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: MyColors.borderTextFieldColor)),
        hintText: hintText,
      ),
      keyboardType: TextInputType.number,
    );
  }
}
