import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.userModel});
  final UserModel userModel;

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
                  top: ConstSizes.height(4),
                  bottom: ConstSizes.height(2),
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
              Column(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: NetworkImage(userModel.imageUrl),
                  ),
                  Text(
                    "${userModel.name} ${userModel.surname}",
                    style: const TextStyle(
                        fontSize: 24,
                        color: MyColors.textColor,
                        fontWeight: FontWeight.bold,
                        height: 3),
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
                      Navigator.pushNamed(context, ClinicRouteNames.editLang);
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
                      exit;
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
            ],
          ),
        ],
      ),
    );
  }

  get exit async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('phone');
  }
}
