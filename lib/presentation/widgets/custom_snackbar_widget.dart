import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:flutter/material.dart';

class CustomSnackbarWidget {
  static messenger(String mytext, Color color) => ScaffoldMessenger.of(
              NavigationService.instance.navigatorKey.currentState!.context)
          .showSnackBar(SnackBar(
        content: SizedBox(height: 30, child: Text(mytext)),
        backgroundColor: color,
      ));
}
