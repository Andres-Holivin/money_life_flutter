import 'package:flutter/material.dart';
import 'package:money_life/size_config.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(35),
          vertical: getProportionateScreenWidth(40)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.transparent),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(4),
              child: Icon(
                Icons.account_circle_rounded,
                size: 50,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello, " + "Andres",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Lorem',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
