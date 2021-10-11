import 'package:flutter/material.dart';
import 'package:money_life/components/text_gesture.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[900], borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text("ID : 123"),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 110,
                      ),
                      TextGesture(
                          colorPrimary: Colors.white,
                          fontSize: 12,
                          press: () {},
                          text: "Change Profile \nPricture")
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          child: Text(
                            "Andres Holivin",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 4),
                          child: Text(
                            "@holivin21",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
