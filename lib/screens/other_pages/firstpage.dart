import 'package:flutter/material.dart';
import 'package:oddo_app/screens/home_screen/home.dart';
import '../../components/NumberPalette.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   title: const Text(
        //     'Inspection',
        //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        //   ),
        //   centerTitle: true,
        //   leading: InkWell(
        //     child: const Icon(
        //       Icons.arrow_back,
        //       color: Colors.black,
        //     ),
        //     onTap: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        //   leadingWidth: 60,
        //   actions: <Widget>[
        //     InkWell(
        //         child: const Icon(
        //           Icons.check,
        //           color: Colors.black,
        //         ),
        //         onTap: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => HomePage()));
        //         }),
        //     const Padding(padding: EdgeInsets.only(right: 20)),
        //   ],
        // ),
        Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /**          Number palette            **/
              // numberPalette(context, 3),
              /**          Overall Result Text            **/
              const Text(
                "Overall Result",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              /**          Length Finding Input Box            **/
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  "Length(Findings)",
                  style: TextStyle(fontSize: 16.5, color: Colors.grey),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                initialValue: "0.0",
                style: const TextStyle(color: Colors.grey),
                enabled: false,
              ),
              /**          seat fight Finding Input Box          **/
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  "seat fight(Findings)",
                  style: TextStyle(fontSize: 16.5, color: Colors.grey),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                initialValue: "0.0",
                style: const TextStyle(color: Colors.grey),
                enabled: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
