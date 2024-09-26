import 'package:clinicapp/data/model/news_model.dart';
import 'package:clinicapp/data/routes/app_route.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/core/resource/assets.dart';
import 'package:clinicapp/presentation/widgets/custom_button_widget.dart';
import 'package:clinicapp/presentation/widgets/header_icons_widget.dart';
import 'package:clinicapp/presentation/widgets/my_text.dart';
import 'package:clinicapp/presentation/widgets/stakced_icons.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const StakcedIcons(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderIconsWidget(pushNamed: ClinicRouteNames.newsAdd),
                MyText(
                  data: newsModel.title,
                  size: 24,
                  fontWeight: FontWeight.w800,
                  fontFamily: AppFonts.lexendTera,
                  letterSpacing: -4,
                  left: ConstSizes.width(4),
                  bottom: ConstSizes.height(3),
                ),
                Center(
                  child: Image(
                    width: ConstSizes.width(30),
                    image: NetworkImage(
                      newsModel.iconUrl,
                    ),
                  ),
                ),
                MyText(
                  data: newsModel.description,
                  color: MyColors.textButtonColor,
                  left: ConstSizes.width(4),
                  right: ConstSizes.width(4),
                  top: ConstSizes.height(3),
                  
                ),
                const Spacer(),
                CustomButtonWidget(
                  title: LangAssets.chang,
                  bottomPadding: 15,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ClinicRouteNames.newsEdit,
                    );
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
