import 'package:clinicapp/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

class MehmonxonaRouteNames {
  static const String user = '/user';
  static const String home = '/home';
  static const String main = '/main';
  static const String search = '/search';
  static const String notification = '/notification';

}

class MehmonxonaRoute {

  static final MehmonxonaRoute _instance = MehmonxonaRoute._init();
  static MehmonxonaRoute get instance => _instance;
  MehmonxonaRoute._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case MehmonxonaRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
  
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}