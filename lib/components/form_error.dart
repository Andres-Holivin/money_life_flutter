import 'package:flutter/material.dart';
import 'package:money_life/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.error,
  }) : super(key: key);
  final List<String> error;
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            error.length, (index) => formErrorText(error[index])));
  }

  Row formErrorText(String error) {
    return Row(
      children: [
        Icon(
          Icons.cancel,
          color: Colors.red,
          size: 20,
        ),
        SizedBox(
          width: getProportionateScreenWidth(50),
        ),
        Text(
          error,
          style: TextStyle(fontSize: 12, color: Colors.red[200]),
        ),
      ],
    );
  }
}
