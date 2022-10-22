import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oddo_app/screens/other_pages/thirdpage.dart';
import '../../components/NumberPalette.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController inspectionDate = TextEditingController();
    TextEditingController planDate = TextEditingController();
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
        //               MaterialPageRoute(builder: (context) => MyThirdPage()));
        //         }),
        //     const Padding(padding: EdgeInsets.only(right: 20)),
        //   ],
        // ),
        Container(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /**          Number palette            **/
          // numberPalette(context, 1),
          /**          Inspection Text            **/
          const Text(
            "Inspection",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          /**          Plan Date Input Box            **/
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "Plan Date",
              style: TextStyle(fontSize: 16.5, color: Colors.grey),
            ),
          ),
          TextFormField(
            controller: planDate,
            readOnly: true,
            onTap: () async {
              DateTime date = DateTime(2000);
              date = (await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100)))!;
              String formattedDate = DateFormat("dd-MM-yyyy").format(date);
              planDate.text = formattedDate;
            },
          ),
          /**          Inspection Date Input Box          **/
          const Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Text(
              "Inspection Date",
              style: TextStyle(fontSize: 16.5, color: Colors.grey),
            ),
          ),
          TextFormField(
            readOnly: true,
            controller: inspectionDate,
            onTap: () async {
              DateTime date = DateTime(2000);

              date = (await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100)))!;
              String formattedDate = DateFormat("dd-MM-yyyy").format(date);
              inspectionDate.text = formattedDate;
            },
          ),
          /**          Delivery Date Alicated Box          **/
          const Padding(padding: EdgeInsets.only(top: 30)),
          DropdownButtonFormField(
            decoration: const InputDecoration(
                labelText: "Delivery Date Alicated to",
                labelStyle: TextStyle(color: Colors.black, fontSize: 16.5)),
            onChanged: (newVal) {},
            items: <String>['Person A', 'Person B', 'Person C', 'Person D']
                .map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem(
                value: val,
                child: Text(val),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
