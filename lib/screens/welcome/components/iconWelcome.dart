import "package:flutter/material.dart";
import 'package:money_life/size_config.dart';

class IconWelcome extends StatelessWidget {
  const IconWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getProportionateScreenHeight(5),
        ),
        Container(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Container(
                child: Image.asset(
                  "assets/images/Wallet.png",
                  width: 150,
                  height: 150,
                ),
              ),
              Positioned(
                left: 20,
                top: 50,
                child: Container(
                    child: Image.asset(
                  "assets/images/Coin.png",
                  width: 88,
                  height: 88,
                )),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "MOLI",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lora",
              fontSize: 34,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Aplication to Manage your Financial",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        )
      ],
    );
  }
}
