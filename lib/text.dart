// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
  final String name;
  final String text;
  final String imgPath;
  final String time;
  int num;

  TextTile(
      {super.key,
      required this.imgPath,
      required this.name,
      required this.text,
      required this.time,
      required this.num});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 28,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage(imgPath),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: Colors.grey.shade600),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(time),
                SizedBox(
                  height: 20,
                ),
                if (num > 0)
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color(0xFF27c1a9),
                    child: Text(
                      num.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          indent: 50,
        )
      ],
    );
  }
}
