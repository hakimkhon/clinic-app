import 'package:clinicapp/presentation/screens/home/home_page.dart';
import 'package:flutter/material.dart';

class MyRouteTestNames {
  static const String home = '/home';

}

class MyRouteTest {

  static final MyRouteTest _instance = MyRouteTest._init();
  static MyRouteTest get instance => _instance;
  MyRouteTest._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRouteTestNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}