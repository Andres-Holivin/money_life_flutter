import 'package:flutter/material.dart';
import 'package:money_life/components/profile_picture.dart';
import 'package:money_life/screens/profileEdit/components/form_profile.dart';
import 'package:money_life/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          // height: SizeConfig.screenHeight,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(35)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: getProportionateScreenWidth(35)),
                  ProfilePicture(),
                  FormProfile(),
                ]),
          ),
        ),
      ),
    );
  }
}
