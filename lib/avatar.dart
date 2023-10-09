// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  final String imgPath;
  final String name;

  const MyAvatar({super.key, required this.imgPath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 13),
        )
      ],
    );
  }
}
