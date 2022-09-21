import 'package:flutter/material.dart';

import '../../components/details_card.dart';

class FinalScreen extends StatefulWidget {
  FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 20,
          ),
          child: Container(
            // height: 200,
            child: Column(
              children: [
                DetailsCard(),
                DetailsCard(),
                DetailsCard(),
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 1.0,
                    offset: Offset(0.0, 0.3))
              ],
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
