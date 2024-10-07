// import 'package:clinicapp/data/mock/mock_data.dart';
// import 'package:clinicapp/data/model/news_model.dart';
// import 'package:clinicapp/data/routes/app_route.dart';
// import 'package:clinicapp/presentation/core/constant/sizes.dart';
// import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
// import 'package:clinicapp/presentation/widgets/my_text.dart';
// import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// class SelectDataPage extends StatelessWidget {
//   const SelectDataPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<NewsModel> myNews = MockData.news;
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             const StakcedIcons(),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const HeaderIconsWidget(),
//                 Container(
//                   // color: Colors.amber[50],
//                   padding: const EdgeInsets.symmetric(horizontal: 2.0),
//                   height: ConstSizes.height(85),
//                   child: ListView.builder(
//                     itemCount: myNews.length,
//                     itemBuilder: (context, index) {
//                       return ZoomTapAnimation(
//                         onTap: () {
//                           Navigator.pushNamed(context, ClinicRouteNames.detail);
//                         },
//                         child: Card(
//                           color: const Color.fromARGB(255, 174, 231, 231),
//                           child: ListTile(
//                             leading: Image(image: NetworkImage(myNews[index].iconUrl)),
//                             // CircleAvatar(
//                             //   radius: 30,
//                             //   backgroundImage:
//                             //       NetworkImage(myNews[index].iconUrl),
//                             // ),
//                             title: MyText(data: myNews[index].title),
//                             subtitle: MyText(
//                               data: myNews[index].description,
//                               fontWeight: FontWeight.w300,
//                               size: 10,
//                             ),
//                             trailing: const Icon(Icons.visibility),
//                             // isThreeLine: true,
//                             // dense: true,
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
