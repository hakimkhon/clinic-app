import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clinic app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,        
      ),
      navigatorKey:  NavigationService.instance.navigatorKey,
      onGenerateRoute: ClinicRoute.generateRoute,
      initialRoute: ClinicRouteNames.home,
    );
  }
}
