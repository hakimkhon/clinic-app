import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: Text(
          'Auth Page',
          style: TextStyle(
            fontSize: 40,
            color: MyColors.textColor,
            fontWeight: FontWeight.bold,
          ),
        ),),
      ),
    );
  }
}