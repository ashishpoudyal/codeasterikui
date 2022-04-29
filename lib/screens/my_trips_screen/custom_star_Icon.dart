import 'package:flutter/material.dart';

class StarContainerIcon extends StatelessWidget {
  final Color color;
  const StarContainerIcon({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(3), boxShadow: []),
      child: Icon(
        Icons.star,
        color: Colors.white,
        size: 18,
      ),
    );
  }
}
