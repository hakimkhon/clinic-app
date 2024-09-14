import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class EditLangPage extends StatelessWidget {
  const EditLangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Edit Lang Page',
            style: TextStyle(
              fontSize: 30,
              color: MyColors.textColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
