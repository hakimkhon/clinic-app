import 'package:clinicapp/data/model/user_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/data/service/mock_service.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/custom_text_field_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController phoneNomberController = TextEditingController();

  @override
  void initState() {
    nameController.text = MockService.userModel.name;
    surnameController.text = MockService.userModel.surname;
    phoneNomberController.text = MockService.userModel.phoneNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            const StakcedIcons(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderIconsWidget(),
                MyText(
                    data: LangAssets.changData,
                    size: 24,
                    fontWeight: FontWeight.w800,
                    left: 15,
                    bottom: 5),
                CustomTextFieldWidget(
                  hintText: LangAssets.firstName,
                  controller: nameController,
                ),
                CustomTextFieldWidget(
                  hintText: LangAssets.lastName,
                  controller: surnameController,
                ),
                CustomTextFieldWidget(
                  hintText: LangAssets.phoneNum,
                  controller: phoneNomberController,
                ),
                CustomButtonWidget(
                  title: LangAssets.confirm,
                  topPadding: ConstSizes.height(2),
                  onTap: () {
                    // for (int i = 0; i < MockData.users.length; i++) {
                    //   if (MockData.users[i] == MockService.userModel.phoneNumber) {
                    //     MockData.users[i] = UserModel(
                    //       name: nameController.text,
                    //       surname: surnameController.text,
                    //       imageUrl: MockService.userModel.imageUrl,
                    //       phoneNumber: phoneNomberController.text,
                    //       smsCod: MockService.userModel.smsCod,
                    //     );
                    //     break;
                    //   }
                    // }
                    MockService.userModel = UserModel(
                      name: nameController.text,
                      surname: surnameController.text,
                      imageUrl: MockService.userModel.imageUrl,
                      phoneNumber: phoneNomberController.text,
                      smsCod: MockService.userModel.smsCod,
                    );
                    Navigator.pushNamedAndRemoveUntil(
                        context, ClinicRouteNames.home, (settings) => false);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
