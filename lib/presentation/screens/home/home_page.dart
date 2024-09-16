import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/urls.dart';
import 'package:clinicapp/presentation/screens/home/widgets/news_widget.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgBodyColor,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 4, top: 10, bottom: 10),
                child: Row(
                  children: [
                    ZoomTapAnimation(
                      onTap: () {
                        Navigator.pushNamed(context, ClinicRouteNames.profile);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          image: DecorationImage(
                            image: NetworkImage(Urls.humans1),
                          ),
                          // border: Border.all(color: MyColors.containerSubTitleColor)
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Khatamov Nuriddin',
                      style: TextStyle(
                        fontSize: 18,
                        color: MyColors.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                       Navigator.pushNamed(context, ClinicRouteNames.visitList); 
                      },
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        size: 34,
                        color: MyColors.hindTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const NewsWidget(),
            ],
          )),
    );
  }
}
