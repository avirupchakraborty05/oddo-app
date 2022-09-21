import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({Key? key}) : super(key: key);
  void Function() onPressed;
  final String name;
  final Color color;
  final Color subSolor;
  final Color bordercolor;
  MyButton({
    required this.name,
    required this.onPressed,
    required this.color,
    required this.subSolor,
    required this.bordercolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: bordercolor),
          color: subSolor,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 40,
        width: 280,
        child: Center(
          child: Text(
            name,
            style: TextStyle(color: color),
          ),
        ),
      ),
    );
  }
}
