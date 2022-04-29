import 'package:flutter/material.dart';

class TopRowMyTrips extends StatelessWidget {
  const TopRowMyTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            size: 35,
          ),
        ),
        Icon(
          Icons.calendar_month,
          size: 35,
        )
      ],
    );
  }
}
