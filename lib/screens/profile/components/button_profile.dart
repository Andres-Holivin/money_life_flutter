import 'package:flutter/material.dart';
import 'package:money_life/size_config.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: getProportionateScreenWidth(1),
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(5)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          onTap: press,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 35,
                ),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
