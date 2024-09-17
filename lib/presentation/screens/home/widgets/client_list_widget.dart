import 'package:clinicapp/data/mock/mock_data.dart';
import 'package:clinicapp/presentation/core/constant/colors.dart';
import 'package:clinicapp/presentation/core/constant/sizes.dart';
import 'package:clinicapp/presentation/screens/home/widgets/item_client_list_view.dart';
import 'package:flutter/material.dart';

class ClientListWidget extends StatelessWidget {
  const ClientListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Mijozlar:",
              style: TextStyle(
                fontSize: 16,
                color: MyColors.containerSubTitleColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            width: ConstSizes.width(100, context),
            height: ConstSizes.height(22, context),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: MyColors.containerBackgroundColor,
            ),
            child: ListView.builder(
              itemCount: MockData.clients.length,
              // prototypeItem: const ListTile(),
              itemBuilder: (context, index) {
                return ItemClientListView(clientModel: MockData.clients[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
