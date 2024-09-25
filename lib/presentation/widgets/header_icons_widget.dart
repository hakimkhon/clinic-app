import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:flutter/material.dart';

class HeaderIconsWidget extends StatelessWidget {
  const HeaderIconsWidget({
    super.key,
    this.pushNamed = "",
  });
  final String pushNamed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: EdgeInsets.only(left: ConstSizes.width(3)),
              icon: const Icon(
                Icons.keyboard_arrow_left,
                size: 38,
              ),
            ),
            const Spacer(),
            Visibility(
              visible: pushNamed != "",
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, pushNamed);
                },
                padding: EdgeInsets.only(right: ConstSizes.width(3)),
                icon: const Icon(
                  Icons.add,
                  size: 38,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
