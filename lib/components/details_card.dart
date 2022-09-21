import 'package:flutter/material.dart';

class DetailsCard extends StatefulWidget {
  DetailsCard({Key? key}) : super(key: key);

  @override
  State<DetailsCard> createState() => _DetailsCardState();
}

class _DetailsCardState extends State<DetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 5,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                maxRadius: 22,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Three-line item",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Icon(
                Icons.info,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
