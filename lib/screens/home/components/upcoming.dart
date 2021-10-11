import 'package:flutter/material.dart';
import 'package:money_life/components/text_gesture.dart';
import 'package:money_life/screens/home/components/upcoming_card.dart';
import 'package:money_life/size_config.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(35),
          vertical: getProportionateScreenWidth(60)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Upcoming",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " (Max 3 display)",
                      style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                    ),
                  ],
                ),
                TextGesture(
                    colorPrimary: Colors.grey,
                    fontSize: 12,
                    press: () {},
                    text: "See All")
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                UpcomingCard(
                  image: "assets/images/Hiburan.png",
                  price: "Rp. 120.000.000",
                  time: "In 10 days",
                  title: "Netflix",
                  type: "Monthly",
                ),
                UpcomingCard(
                  image: "assets/images/Hiburan.png",
                  price: "Rp. 120.000.000",
                  time: "In 10 days",
                  title: "Netflix",
                  type: "Monthly",
                ),
                UpcomingCard(
                  image: "assets/images/Hiburan.png",
                  price: "Rp. 120.000.000",
                  time: "In 10 days",
                  title: "Netflix",
                  type: "Monthly",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
