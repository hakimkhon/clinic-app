import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/constant/urls.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const StakcedIcons(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: ConstSizes.height(4, context),
                  bottom: ConstSizes.height(2, context),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    size: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  width: ConstSizes.width(100, context),
                  height: ConstSizes.height(52, context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        margin: EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          image: DecorationImage(
                            image: NetworkImage(Urls.humans1),
                          ),
                          // border: Border.all(color: MyColors.containerSubTitleColor)
                        ),
                      ),
                      const Text(
                        "Khatamov Nuriddin",
                        style: TextStyle(
                          fontSize: 24,
                          color: MyColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomButtonWidget(
                        title: "Ma'lumotlarni o'zgartirish",
                        onTap: () {
                          Navigator.pushNamed(
                              context, ClinicRouteNames.editProfile);
                        },
                        icon: true,
                      ),
                      CustomButtonWidget(
                        title: "Tilni o'zgartirish",
                        onTap: () {
                          Navigator.pushNamed(
                              context, ClinicRouteNames.editLang);
                        },
                        icon: true,
                      ),
                      CustomButtonWidget(
                        title: "Ommaviy offerta",
                        onTap: () {},
                        icon: true,
                      ),
                      CustomButtonWidget(
                        title: "Akkauntdan chiqish",
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            ClinicRouteNames.registration,
                            (settings) => false,
                          );
                        },
                        color: MyColors.hindTextColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
