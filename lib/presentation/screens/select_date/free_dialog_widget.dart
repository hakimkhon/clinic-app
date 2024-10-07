import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/screens/news/widgets/tes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class FreeDialogWidget extends StatelessWidget {
  const FreeDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: ConstSizes.height(24),
        // color: MyColors.containerBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const MyText(
              data: "Bu vaqt bo'sh",
              color: MyColors.btnBackgroundColor,
              size: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              bottom: 10,
            ),
            CustomButtonWidget(
              title: "Shu vaqtni band qilish",
              size: 16,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            CustomButtonWidget(
              title: "Boshqa vaqtni tanlash",
              color: MyColors.btnBackgroundDarkColor,
              size: 16,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
