import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/screens/select_date/busy_dialog_widget.dart';
import 'package:clinicapp/presentation/screens/select_date/free_dialog_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemDetailCalendarWidget extends StatelessWidget {
  const ItemDetailCalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ConstSizes.width(4), vertical: ConstSizes.height(1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            data: "Farmonov Abdug’ani Shokirovich | Stomatolog",
            color: MyColors.containerSubTitleColor,
            left: ConstSizes.width(1),
            size: 16,
          ),
          Container(
            width: ConstSizes.width(100),
            height: ConstSizes.height(26),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyColors.containerBackgroundColor,
            ),
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 44,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return ZoomTapAnimation(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => index % 4 == 3
                            ? const BusyDialogWidget()
                            : const FreeDialogWidget(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index % 4 == 3
                            ? Colors.white.withOpacity(0.4)
                            : Colors.white.withOpacity(0.8),
                      ),
                      child: Center(
                        child: MyText(
                          data: "${index + 9}:00-${index + 10}:00",
                          size: 16,
                          letterSpacing: -1,
                          fontFamily: AppFonts.lexendTera,
                          color: MyColors.containerSubTitleColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
