import 'package:flutter/material.dart';
import 'package:money_life/components/text_gesture.dart';
import 'package:money_life/models/CalculationMoney.dart';
import 'package:money_life/size_config.dart';

import 'chart_attribute.dart';

class Cart extends StatelessWidget {
  const Cart({
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
                Text(
                  "Money Chart",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                TextGesture(
                    colorPrimary: Colors.grey,
                    fontSize: 14,
                    press: () {},
                    text: "See More")
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[900],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(150),
                ),
                Text(
                  "Total Monthly Expenditure",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(100),
                ),
                Text(
                  "Rp. 500.000.000",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(4),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ChartAttribute(
                      DataSample.sampleDataMoney(),
                      animate: false,
                    ),
                  ),
                ),
                Text(
                  "Avg/Day",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Rp. 500.000",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(150),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
