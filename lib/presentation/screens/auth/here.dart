import 'package:flutter/material.dart';

class HereTest extends StatelessWidget {
  const HereTest({
    super.key,
    required this.image,
    required this.description,
    required this.title,
  });
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
