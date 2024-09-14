import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "Ro'yhatdan o'tish",
                style: TextStyle(
                  fontSize: 26,
                  color: MyColors.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
