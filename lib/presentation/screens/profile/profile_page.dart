import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(
        'Profile Page',
        style: TextStyle(
          fontSize: 40,
          color: MyColors.textColor,
          fontWeight: FontWeight.bold,
        ),
      ),),
    );
  }
}