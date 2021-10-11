import 'package:flutter/material.dart';

import 'balance_card.dart';

class ValueCard extends StatelessWidget {
  const ValueCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            BalanceCard(
              accountNumber: "1232 4234 2321 2321",
              balance: "Rp. 1.000.000,00",
              image: "assets/images/MyBca.png",
              type: "My BCA",
            ),
            BalanceCard(
              accountNumber: "1232 4234 2321 2321",
              balance: "Rp. 1.000.000,00",
              image: "assets/images/OVO.png",
              type: "My BCA",
            ),
          ],
        ));
  }
}
