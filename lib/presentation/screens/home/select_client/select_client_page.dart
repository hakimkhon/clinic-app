import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 40,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          ClinicRouteNames.diagnosis,
                        );
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  width: ConstSizes.width(100),
                  height: ConstSizes.height(45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 110,
                        height: 110,
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          image: DecorationImage(
                            image: NetworkImage(userModel.imageUrl),
                          ),
                          border: Border.all(color: MyColors.containerSubTitleColor)
                        ),
                      ),
                      Text(
                        "${userModel.name} ${userModel.surname}",
                        style: const TextStyle(
                          fontSize: 24,
                          color: MyColors.textColor,
                          fontWeight: FontWeight.bold,
                        ),
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
