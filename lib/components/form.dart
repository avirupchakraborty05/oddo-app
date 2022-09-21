import 'dart:ffi';

import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  // const MyTextFormField({Key? key}) : super(key: key);

  final String hintText;
  final IconData icon;
  final Color iconColor;
  bool obscureText;

  MyTextFormField({
    required this.hintText,
    required this.icon,
    required this.iconColor,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: iconColor,
          ),
          hintStyle: TextStyle(color: Colors.black),
          hintText: hintText,
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
