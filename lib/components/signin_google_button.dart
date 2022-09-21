import 'package:flutter/material.dart';

// class MyButton extends StatefulWidget {
//   // const MyButton({Key? key}) : super(key: key);
//   void Function() onPressed;
//   final String name;
//   final Color color;
//   final Color subSolor;
//   final Color bordercolor;
//   MyButton({
//     required this.name,
//     required this.onPressed,
//     required this.color,
//     required this.subSolor,
//     required this.bordercolor,
//   });

//   @override
//   State<MyButton> createState() => _MyButtonState();
// }

// class _MyButtonState extends State<MyButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: widget.bordercolor),
//         color: widget.subSolor,
//         borderRadius: BorderRadius.circular(5),
//       ),
//       height: 45,
//       width: 280,
//       child: Center(
//         child: Row(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 image: new DecorationImage(
//                   image: new AssetImage("images/logo.png"),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             Text(
//               widget.name,
//               style: TextStyle(color: widget.color),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SignupGoogleButton extends StatefulWidget {
  // SignupGoogleButton({Key? key}) : super(key: key);
  void Function() onPressed;
  final String name;
  final Color color;
  final Color subSolor;
  final Color bordercolor;
  SignupGoogleButton({
    required this.name,
    required this.onPressed,
    required this.color,
    required this.subSolor,
    required this.bordercolor,
  });

  @override
  State<SignupGoogleButton> createState() => _SignupGoogleButtonState();
}

class _SignupGoogleButtonState extends State<SignupGoogleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: widget.bordercolor),
          color: widget.subSolor,
          borderRadius: BorderRadius.circular(2),
        ),
        height: 40,
        width: 280,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/logo/google_oddo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 12,
                  color: widget.color,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
