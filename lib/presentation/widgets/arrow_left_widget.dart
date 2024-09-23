import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';

class ArrowLeftWidget extends StatelessWidget {
  const ArrowLeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ConstSizes.height(6),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.keyboard_arrow_left,
          size: 40,
        ),
      ),
    );
  }
}
