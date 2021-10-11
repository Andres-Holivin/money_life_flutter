import 'package:flutter/material.dart';
import 'package:money_life/components/default_button.dart';
import 'package:money_life/components/form_error.dart';
import 'package:money_life/size_config.dart';

class SingUpForm extends StatefulWidget {
  SingUpForm({Key? key}) : super(key: key);

  @override
  _SingUpFormState createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errorList = ["test"];
  late String username, password, email, fullName, confirmPassword;
  late int phoneNumber;
  late bool isObscure = true;
  late bool isObscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formFieldName(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          formFieldUsername(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          formFieldEmail(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          formFieldPhone(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          formFieldPassword(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          formFieldConfirmPassword(),
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
              press: () {},
              fontSize: 24),
        ],
      ),
    );
  }

  TextFormField formFieldName() {
    return TextFormField(
      onSaved: (newValue) => fullName = newValue!,
      style: TextStyle(fontSize: 18),
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText: "Full Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(
          Icons.badge,
          size: 20,
        ),
      ),
    );
  }

  TextFormField formFieldUsername() {
    return TextFormField(
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

  TextFormField formFieldEmail() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      style: TextStyle(fontSize: 18),
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText: "Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(
          Icons.alternate_email,
          size: 20,
        ),
      ),
    );
  }

  TextFormField formFieldPhone() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue! as int,
      style: TextStyle(fontSize: 18),
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText: "Phone",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(
          Icons.phone_iphone,
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

  TextFormField formFieldConfirmPassword() {
    return TextFormField(
      obscureText: isObscureConfirm,
      onSaved: (newValue) => confirmPassword = newValue!,
      style: TextStyle(fontSize: 18),
      onChanged: (value) {
        return null;
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
          hintText: "Confirm Password",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(
            Icons.lock,
            size: 20,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscureConfirm = !isObscureConfirm;
              });
            },
            icon: Icon(
                isObscureConfirm ? Icons.visibility : Icons.visibility_off),
          )),
    );
  }
}
