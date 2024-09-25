import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('uz', 'UZ'),
          Locale('en', 'EN'),
          Locale('ru', 'RU'),
        ],
        path: 'assets/lang',
        fallbackLocale: const Locale('uz', 'UZ'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Clinic app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: NavigationService.instance.navigatorKey,
      onGenerateRoute: ClinicRoute.generateRoute,
      initialRoute: ClinicRouteNames.splash,
    );
  }
}
