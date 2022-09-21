import 'package:flutter/material.dart';
import 'package:oddo_app/screens/other_pages/firstpage.dart';

import '../../components/NumberPalette.dart';

class MyThirdPage extends StatefulWidget {
  const MyThirdPage({Key? key}) : super(key: key);

  @override
  State<MyThirdPage> createState() => _MyThirdPageState();
}

class _MyThirdPageState extends State<MyThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Inspection',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: InkWell(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 60,
        actions: <Widget>[
          InkWell(
            child: const Icon(
              Icons.check,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyFirstPage()));
            },
          ),
          const Padding(padding: EdgeInsets.only(right: 20))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /**          Number palette            **/
            numberPalette(context, 2),
            /**         Are you Hiring Text            **/
            const Text(
              "Are you Hiring",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            /**          Approved Item DropDown            **/
            const Padding(padding: EdgeInsets.only(top: 20)),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 8),
                labelText: "Approved item",
                labelStyle: TextStyle(color: Colors.black, fontSize: 16.5),
              ),
              onChanged: (newVal) {},
              items: <String>['Item 1', 'item 2', 'Item 3']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),
            /**          Order Copy DropDown            **/
            const Padding(padding: EdgeInsets.only(top: 30)),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8),
                  labelText: "Order copy",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16.5)),
              onChanged: (newVal) {},
              items: <String>['Item 1', 'item 2', 'Item 3']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),
            /**          Order Quantity DropDown            **/
            const Padding(padding: EdgeInsets.only(top: 30)),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8),
                  labelText: "Order quantity",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16.5)),
              onChanged: (newVal) {},
              items: <String>['1', '2', '3', '4', '5', '6']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),
            /**          Labelling DropDown            **/
            const Padding(padding: EdgeInsets.only(top: 30)),
            DropdownButtonFormField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8),
                  labelText: "Labelling",
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16.5)),
              onChanged: (newVal) {},
              items: <String>['Item 1', 'item 2', 'Item 3']
                  .map<DropdownMenuItem<String>>((String val) {
                return DropdownMenuItem(
                  value: val,
                  child: Text(val),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
