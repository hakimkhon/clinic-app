import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class SelectClientPage extends StatelessWidget {
  const SelectClientPage({
    super.key,
    required this.userModel,
  });
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
                const HeaderIconsWidget(pushNamed: ClinicRouteNames.diagnosis),
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
                  title: "11 Sentabr",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ClinicRouteNames.diagnosis,
                    );
                  },
                  icon: true,
                ),
                CustomButtonWidget(
                  title: "7 Avgust",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ClinicRouteNames.diagnosis,
                    );
                  },
                  icon: true,
                ),
                CustomButtonWidget(
                  title: "23 Avgust",
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ClinicRouteNames.diagnosis,
                    );
                  },
                  icon: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
