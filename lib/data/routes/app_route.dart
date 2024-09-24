import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/presentation/screens/auth/ratification_page.dart';
import 'package:clinicapp/presentation/screens/auth/registration_page.dart';
import 'package:clinicapp/presentation/screens/home/diagnosis/diagnosis_page.dart';
import 'package:clinicapp/presentation/screens/home/home_page.dart';
import 'package:clinicapp/presentation/screens/home/news/news_page.dart';
import 'package:clinicapp/presentation/screens/home/news_add/news_add_page.dart';
import 'package:clinicapp/presentation/screens/home/news_edit/news_edit_page.dart';
import 'package:clinicapp/presentation/screens/home/select_client/select_client_page.dart';
import 'package:clinicapp/presentation/screens/home/select_date/detail_page.dart';
import 'package:clinicapp/presentation/screens/home/select_date/select_data_page.dart';
import 'package:clinicapp/presentation/screens/home/visit_list_page.dart';
import 'package:clinicapp/presentation/screens/profile/edit_lang/edit_lang_page.dart';
import 'package:clinicapp/presentation/screens/profile/edit_profile/edit_profile_page.dart';
import 'package:clinicapp/presentation/screens/profile/profile_page.dart';
import 'package:clinicapp/presentation/screens/profile/settings/settings_page.dart';
import 'package:clinicapp/presentation/screens/splash/splash_page.dart';
import 'package:flutter/material.dart';

class ClinicRouteNames {
  static const String home = '/home';
  static const String profile = '/profile';
  static const String setting = '/setting';
  static const String splash = '/splash';
  static const String diagnosis = '/diagnosis';
  static const String news = '/news';
  static const String newsAdd = '/newsAdd';
  static const String newsEdit = '/newsEdit';
  static const String editLang = '/editLang';
  static const String editProfile = '/editProfile';
  static const String selectDate = '/selectDate';
  static const String selectClient = '/selectClient';
  static const String registration = '/registration';
  static const String ratification = '/ratification';
  static const String visitList = '/visitList';
  static const String detail = '/detail';
}

class ClinicRoute {
  static final ClinicRoute _instance = ClinicRoute._init();
  static ClinicRoute get instance => _instance;
  ClinicRoute._init();

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ClinicRouteNames.ratification:
        return MaterialPageRoute(
            builder: (context) => RatificationPage(
                  phoneNumber: settings.arguments as String,
                ));
      case ClinicRouteNames.registration:
        return MaterialPageRoute(
          builder: (context) => const RegistrationPage(),
        );
      case ClinicRouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case ClinicRouteNames.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case ClinicRouteNames.profile:
        return MaterialPageRoute(builder: (context) => ProfilePage(userModel: settings.arguments as UserModel));
      case ClinicRouteNames.setting:
        return MaterialPageRoute(builder: (context) => const SettingsPage());
      case ClinicRouteNames.diagnosis:
        return MaterialPageRoute(builder: (context) => const DiagnosisPage());
      case ClinicRouteNames.visitList:
        return MaterialPageRoute(builder: (context) => const VisitListPage());
      case ClinicRouteNames.selectClient:
        return MaterialPageRoute(
            builder: (context) =>
                SelectClientPage(userModel: settings.arguments as UserModel));
      case ClinicRouteNames.selectDate:
        return MaterialPageRoute(builder: (context) => const SelectDataPage());
      case ClinicRouteNames.news:
        return MaterialPageRoute(
            builder: (context) =>
                NewsPage(newsModel: settings.arguments as NewsModel));
      case ClinicRouteNames.newsAdd:
        return MaterialPageRoute(builder: (context) => const NewsAddPage());
      case ClinicRouteNames.newsEdit:
        return MaterialPageRoute(builder: (context) => const NewsEditPage());
      case ClinicRouteNames.editLang:
        return MaterialPageRoute(builder: (context) => const EditLangPage());
      case ClinicRouteNames.editProfile:
        return MaterialPageRoute(builder: (context) => const EditProfilePage());
      case ClinicRouteNames.detail:
        return MaterialPageRoute(builder: (context) => const DetailPage());
      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}
