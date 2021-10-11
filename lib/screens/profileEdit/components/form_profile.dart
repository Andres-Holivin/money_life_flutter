import 'package:flutter/material.dart';
import 'package:money_life/models/Editable.dart';

class FormProfile extends StatefulWidget {
  @override
  _FormProfileState createState() => _FormProfileState();
}

class _FormProfileState extends State<FormProfile> {
  final _formKey = GlobalKey<FormState>();
  final List<String> error = [];
  late String username, name, phone, email, address, status;
  final bool editable = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formUsername(),
          formName(),
          formPhone(),
          formEmail(),
          formCountry(),
          formCity(),
          formAddress(),
          formStatus()
        ],
      ),
    );
  }

  Container formUsername() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        onSaved: (newValue) => username = newValue!,
        initialValue: "@holivin21",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          labelText: "Username",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.person),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formName() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        onSaved: (newValue) => name = newValue!,
        initialValue: "Andres Holivin",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          labelText: "Full Name",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.badge),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formPhone() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        onSaved: (newValue) => username = newValue!,
        initialValue: "081366100678",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          labelText: "Phone",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.phone),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formEmail() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onSaved: (newValue) => email = newValue!,
        initialValue: "andres@gmail.com",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          labelText: "Email",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.alternate_email),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formAddress() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onSaved: (newValue) => address = newValue!,
        initialValue: "Jl adafasdfa",
        minLines: 1,
        maxLines: 3,
        keyboardType: TextInputType.multiline,
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          labelText: "Address",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.home),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formCity() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onSaved: (newValue) => address = newValue!,
        initialValue: "Jambi",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          labelText: "City",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.apartment),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formCountry() {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onSaved: (newValue) => address = newValue!,
        initialValue: "Indonesia",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          labelText: "Country",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.apartment),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Container formStatus() {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 25),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        minLines: 1,
        maxLines: 6,
        onSaved: (newValue) => address = newValue!,
        initialValue:
            "Lorem ipsum dolor sit amet Lorem ipsum dolor sit ametLorem ipsum dolor sit amet",
        enabled: edit,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          labelText: "Status",
          fillColor: edit ? Colors.white10 : Colors.transparent,
          labelStyle: TextStyle(letterSpacing: 1),
          prefixIcon: Icon(Icons.description),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
