import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String imgPath;
  const Avatar({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 28,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.blue,
        backgroundImage: AssetImage(imgPath),
      ),
    );
  }
}
