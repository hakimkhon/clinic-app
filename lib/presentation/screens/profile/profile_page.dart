import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/routes/navigation_service.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.userModel});
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const StakcedIcons(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const HeaderIconsWidget(),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(userModel.imageUrl),
                ),
                MyText(
                  data: "${userModel.name} ${userModel.surname}",
                  size: 24,
                  fontWeight: FontWeight.w800,
                  bottom: ConstSizes.height(1),
                  top: ConstSizes.height(1),
                ),
                CustomButtonWidget(
                  title: LangAssets.changData,
                  onTap: () {
                    Navigator.pushNamed(context, ClinicRouteNames.editProfile);
                  },
                  icon: true,
                ),
                CustomButtonWidget(
                  title: LangAssets.changLang,
                  onTap: () {
                    Navigator.pushNamed(context, ClinicRouteNames.editLang);
                  },
                  icon: true,
                ),
                CustomButtonWidget(
                  title: LangAssets.offerta,
                  onTap: () {},
                  icon: true,
                ),
                CustomButtonWidget(
                  title: LangAssets.account,
                  onTap: () {
                    exit;
                  },
                  color: MyColors.hindTextColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  get exit async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('phone');
    NavigationService.instance
        .navigateMyScreenAndRemoveUntil(routeName: ClinicRouteNames.splash);
  }
}
