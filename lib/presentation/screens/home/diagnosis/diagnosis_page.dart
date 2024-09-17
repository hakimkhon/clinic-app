import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class DiagnosisPage extends StatelessWidget {
  const DiagnosisPage({super.key});

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
                padding: const EdgeInsets.only(top: 40.0),
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
              Container(
                height: ConstSizes.height(86),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "1 Yanvarda qo'yilgan tashxis",
                      style: TextStyle(
                        fontSize: 24,
                        color: MyColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: ConstSizes.width(100),
                      height: ConstSizes.height(75),
                      child: ListView(
                        padding: EdgeInsets.zero,
                      shrinkWrap: true,
                        children: [
                          Text(
                            MockData.diagnosis[0].fullFormDiagnos,
                            style: const TextStyle(
                              fontSize: 16,
                              color: MyColors.subTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Image(image: NetworkImage(MockData.diagnosis[0].imgUrl),),
                          Text(
                            MockData.diagnosis[2].fullFormDiagnos,
                            style: const TextStyle(
                              fontSize: 16,
                              color: MyColors.subTextColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButtonWidget(
                        title: "Saqlash",
                        onTap: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
