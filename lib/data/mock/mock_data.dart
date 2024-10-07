import 'package:clinicapp/data/model/client_model.dart';
import 'package:clinicapp/data/model/diagnosis_model.dart';
import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/presentation/core/constant/descritions.dart';
import 'package:clinicapp/presentation/core/constant/urls.dart';

class MockData {
//Bu joyda yangiliklarni API ulaguncha test sifatida foydalandik
  static List<DiagnosisModel> diagnosis = [
    DiagnosisModel(
      date: DateTime(2024, 09, 14),
      shortFormDiagnos: "Qo'l sinishi",
      fullFormDiagnos: Descriptions.diagnosisDescription1,
      imgUrl: Urls.diagnosisImg1,
    ),
    DiagnosisModel(
      date: DateTime(2024, 09, 3),
      shortFormDiagnos: "Oyoq sinishi",
      fullFormDiagnos: Descriptions.diagnosisDescription2,
      imgUrl: Urls.diagnosisImg2,
    ),
    DiagnosisModel(
      date: DateTime(2024, 05, 14),
      shortFormDiagnos: "Bel og'rishi",
      fullFormDiagnos: Descriptions.diagnosisDescription3,
      imgUrl: Urls.diagnosisImg3,
    ),
    DiagnosisModel(
      date: DateTime(2024, 06, 14),
      shortFormDiagnos: "Bosh og'rishi",
      fullFormDiagnos: Descriptions.diagnosisDescription4,
      imgUrl: Urls.diagnosisImg4,
    ),
    DiagnosisModel(
      date: DateTime(2024, 09, 3),
      shortFormDiagnos: "Oyoq sinishi",
      fullFormDiagnos: Descriptions.diagnosisDescription2,
      imgUrl: Urls.diagnosisImg2,
    ),
  ];

//Bu joyda yangiliklarni API ulaguncha test sifatida foydalandik
  static List<NewsModel> news = [
    NewsModel(
      title: "Covid",
      description: Descriptions.newsDescription1,
      iconUrl: Urls.iconNews1,
    ),
    NewsModel(
      title: "News-19",
      description: Descriptions.newsDescription2,
      iconUrl: Urls.iconNews2,
    ),
    NewsModel(
      title: "News-20",
      description: Descriptions.newsDescription3,
      iconUrl: Urls.iconNews3,
      link: "https://gov.uz/oz/ssv/news/view/21322",
    ),
    NewsModel(
      title: "News-21",
      description: Descriptions.newsDescription4,
      iconUrl: Urls.iconNews4,
    ),
    NewsModel(
      title: "News-22",
      description: Descriptions.newsDescription5,
      iconUrl: Urls.iconNews5,
    ),
  ];

//Bu joyda foydalanuvchilarni API ulaguncha test sifatida foydalandik
  static List<UserModel> users = [
    UserModel(
      name: "Shukur",
      surname: "Jamolxonov",
      imageUrl: Urls.humans3,
      phoneNumber: "911111111",
      smsCod: "1111",
    ),
    UserModel(
      name: "Alimardon",
      surname: "Toshboyev",
      imageUrl: Urls.humans2,
      phoneNumber: "922222222",
      smsCod: "2222",
    ),
    UserModel(
      name: "Jasurbek",
      surname: "Axmedov",
      imageUrl: Urls.humans3,
      phoneNumber: "933333333",
      smsCod: "3333",
    ),
    UserModel(
      name: "Otabek",
      surname: "Nosirov",
      imageUrl: Urls.humans4,
      phoneNumber: "944444444",
      smsCod: "4444",
    ),
    UserModel(
      name: "Nosirxon",
      surname: "Kamalov",
      imageUrl: Urls.humans5,
      phoneNumber: "955555555",
      smsCod: "5555",
    ),
  ];

  static List<ClientModel> clients = [
    ClientModel(
      firstName: "Tojiyev",
      lastName: "Timur",
      timeInterval: "10:00-11:00",
      image: Urls.humans7
    ),
    ClientModel(
      firstName: "Umarova",
      lastName: "Adolat",
      timeInterval: "13:00-14:00",
      image: Urls.humans10
    ),
    ClientModel(
      firstName: "Alijonov",
      lastName: "G'ani",
      timeInterval: "15:00-16:00",
      image: Urls.humans5
    ),
    ClientModel(
      firstName: "Safarova",
      lastName: "Barchinoy",
      timeInterval: "15:00-16:00",
      image: Urls.humans9
    ),
    ClientModel(
      firstName: "Odilov",
      lastName: "Nosir",
      timeInterval: "15:00-16:00",
      image: Urls.humans3
    ),
    ClientModel(
      firstName: "Otabekova",
      lastName: "Oydina",
      timeInterval: "15:00-16:00",
      image: Urls.humans8
    ),
    ClientModel(
      firstName: "Xatamov",
      lastName: "Jamol",
      timeInterval: "15:00-16:00",
      image: Urls.humans1
    ),
  ];
   static final List<String> month = [
    "Yanvar",
    "Fevral",
    "Mart",
    "Aprel",
    "May",
    "Iyun",
    "Iyul",
    "Avgust",
    "Sentyabr",
    "Oktyabr",
    "Noyabr",
    "Dekabr",
  ];
}
