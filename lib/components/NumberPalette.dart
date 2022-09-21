import 'package:flutter/material.dart';

Widget numberPalette(context, no) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        circle(context, "1", active: (no == 1) ? true : false),
        line(context),
        circle(context, "2", active: (no == 2) ? true : false),
        line(context),
        circle(context, "3", active: (no == 3) ? true : false),
        line(context),
        circle(context, "4", active: (no == 4) ? true : false),
        line(context),
        circle(context, "5", active: (no == 5) ? true : false),
      ],
    ),
  );
}

Widget circle(context, String no, {bool active = false}) {
  return Container(
    height: MediaQuery.of(context).size.width * 0.1,
    width: MediaQuery.of(context).size.width * 0.1,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: (active) ? Colors.grey.shade300 : Colors.white,
      border: Border.all(
        width: 2,
        color: Colors.black,
      ),
    ),
    child: Center(
        child: Text(
      no,
      style: const TextStyle(fontSize: 15),
    )),
  );
}

Widget line(context) {
  return Container(
    height: 2,
    width: MediaQuery.of(context).size.width * 0.07,
    decoration: const BoxDecoration(
      shape: BoxShape.rectangle,
      color: Colors.black,
    ),
  );
}
