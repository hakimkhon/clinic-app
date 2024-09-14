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
      body: Center(child: Text(
        'Home Page',
        style: TextStyle(
          fontSize: 40,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),),
    );
  }
}