import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/data/model/client_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class SelectClientPage extends StatelessWidget {
  const SelectClientPage({
    super.key,
    required this.clientModel,
    // required this.diagnosisModel,
  });
  final ClientModel clientModel;
  // final DiagnosisModel diagnosisModel;

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
                  backgroundImage: NetworkImage(clientModel.image),
                ),
                MyText(
                  data: "${clientModel.firstName} ${clientModel.lastName}",
                  size: 24,
                  fontWeight: FontWeight.w800,
                  bottom: ConstSizes.height(1),
                  top: ConstSizes.height(1),
                ),
                for (int i = 0; i < MockData.diagnosis.length; i++)
                  CustomButtonWidget(
                    title: MockData.diagnosis[i].shortFormDiagnos,
                    size: 18,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ClinicRouteNames.diagnosis,
                        // arguments: diagnosisModel,
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
