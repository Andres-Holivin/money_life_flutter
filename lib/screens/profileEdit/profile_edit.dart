import 'package:flutter/material.dart';
import 'package:money_life/components/nav_bar_buttom.dart';
import 'package:money_life/menu_state.dart';
import 'package:money_life/models/Editable.dart';
import 'package:money_life/size_config.dart';

import 'components/body.dart';

class ProfileEditScreen extends StatefulWidget {
  static String routeName = "/ProfileEditScreen";

  @override
  _ProfileEditScreenState createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  String btnEditable = "Edit";

  setLabelBtn() {
    setState(() {
      edit = !edit;
      if (edit) {
        btnEditable = 'Save';
      } else {
        btnEditable = 'Edit';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            edit = false;
          },
        ),
        title: Text(
          "Sing Up",
          style: TextStyle(),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setLabelBtn();
            },
            child: Text(
              btnEditable,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBarButtom(
        selectedMenu: MenuState.profile,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
              0,
              0.25,
              0.75,
              1,
            ],
                colors: [
              Colors.indigo,
              Colors.black,
              Colors.black,
              Colors.deepPurple,
            ])),
        child: Body(),
      ),
    );
  }
}
