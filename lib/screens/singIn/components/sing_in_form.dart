import 'package:flutter/material.dart';
import 'package:money_life/components/default_button.dart';
import 'package:money_life/components/form_error.dart';
import 'package:money_life/components/text_gesture.dart';
import 'package:money_life/screens/home/home.dart';
import 'package:money_life/size_config.dart';

class SingInForm extends StatefulWidget {
  SingInForm({Key? key}) : super(key: key);

  @override
  _SingInFormState createState() => _SingInFormState();
}

class _SingInFormState extends State<SingInForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errorList = ["test"];
  late String username, password;
  late bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formFieldEmail(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          formFieldPassword(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Container(
              width: getProportionateScreenWidth(0),
              alignment: Alignment.centerRight,
              child: TextGesture(
                  colorPrimary: Colors.grey,
                  fontSize: 14,
                  press: () {},
                  text: "Forgot Password?")),
          SizedBox(
            height: getProportionateScreenWidth(50),
          ),
          FormError(
            error: errorList,
          ),
          SizedBox(
            height: getProportionateScreenWidth(50),
          ),
          DefaultButton(
              primaryColor: Color(0xFF283593),
              sideColor: Colors.transparent,
              text: "Sing In",
              press: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              fontSize: 24),
        ],
      ),
    );
  }

  TextFormField formFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => username = newValue!,
      style: TextStyle(fontSize: 18),
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText: "Username",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(
          Icons.person,
          size: 20,
        ),
      ),
    );
  }

  TextFormField formFieldPassword() {
    return TextFormField(
      obscureText: isObscure,
      onSaved: (newValue) => password = newValue!,
      style: TextStyle(fontSize: 18),
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
          hintText: "Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(
            Icons.lock,
            size: 20,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
          )),
    );
  }
}
