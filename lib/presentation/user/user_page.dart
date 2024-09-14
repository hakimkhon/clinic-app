import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text(
        'User Page',
        style: TextStyle(
          fontSize: 40,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),),
    );
  }
}