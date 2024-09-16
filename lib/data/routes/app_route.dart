import 'package:clinicapp/presentation/screens/auth/ratification_page.dart';
import 'package:clinicapp/presentation/screens/auth/registration_page.dart';
import 'package:clinicapp/presentation/screens/home/diagnosis/diagnosis_page.dart';
import 'package:clinicapp/presentation/screens/home/home_page.dart';
import 'package:clinicapp/presentation/screens/home/news/news_page.dart';
import 'package:clinicapp/presentation/screens/home/news_add/news_add_page.dart';
import 'package:clinicapp/presentation/screens/home/select_date/select_data_page.dart';
import 'package:clinicapp/presentation/screens/home/visit_list_page.dart';
import 'package:clinicapp/presentation/screens/profile/edit_lang/edit_lang_page.dart';
import 'package:clinicapp/presentation/screens/profile/edit_profile/edit_profile_page.dart';
import 'package:clinicapp/presentation/screens/profile/profile_page.dart';
import 'package:clinicapp/presentation/screens/profile/settings/settings_page.dart';
import 'package:flutter/material.dart';

class ClinicRouteNames {
  static const String home = '/home';
  static const String profile = '/profile';
  static const String setting = '/setting';
  static const String diagnosis = '/diagnosis';
  static const String news = '/news';
  static const String newsAdd = '/newsAdd';
  static const String editLang = '/editLang';
  static const String editProfile = '/editProfile';
  static const String selectDate = '/selectDate';
  static const String registration = '/registration';
  static const String ratification = '/ratification';
  static const String visitList = '/visitList';
}

class ClinicRoute {
  static final ClinicRoute _instance = ClinicRoute._init();
  static ClinicRoute get instance => _instance;
  ClinicRoute._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ClinicRouteNames.ratification:
        return MaterialPageRoute(builder: (context) => const RatificationPage());
      case ClinicRouteNames.registration:
        return MaterialPageRoute(builder: (context) => const RegistrationPage());
      case ClinicRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case ClinicRouteNames.profile:
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      case ClinicRouteNames.setting:
        return MaterialPageRoute(builder: (context) => const SettingsPage());
      case ClinicRouteNames.diagnosis:
        return MaterialPageRoute(builder: (context) => const DiagnosisPage());
      case ClinicRouteNames.visitList:
        return MaterialPageRoute(builder: (context) => const VisitListPage());
      case ClinicRouteNames.news:
        return MaterialPageRoute(builder: (context) => const NewsPage());
      case ClinicRouteNames.newsAdd:
        return MaterialPageRoute(builder: (context) => const NewsAddPage());
      case ClinicRouteNames.editLang:
        return MaterialPageRoute(builder: (context) => const EditLangPage());
      case ClinicRouteNames.editProfile:
        return MaterialPageRoute(builder: (context) => const EditProfilePage());
      case ClinicRouteNames.selectDate:
        return MaterialPageRoute(builder: (context) => const SelectDataPage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
