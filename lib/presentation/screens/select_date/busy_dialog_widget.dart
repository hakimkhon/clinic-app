import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/screens/news/widgets/tes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class BusyDialogWidget extends StatelessWidget {
  const BusyDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: ConstSizes.height(18),
        padding: EdgeInsets.symmetric(
          horizontal: ConstSizes.width(1),
        ),
        color: MyColors.containerBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const MyText(
              data: "Bu vaqt band!",
              color: MyColors.btnBackgroundColor,
              size: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              // bottom: 20,
            ),
            CustomButtonWidget(
              title: "Boshqa vaqtni tanlash",
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
