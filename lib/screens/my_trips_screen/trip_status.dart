import 'package:design_task/screens/my_trips_screen/status_custom_button.dart';
import 'package:flutter/material.dart';

class TripStatus extends StatelessWidget {
  const TripStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          TripStatusButton(
            txt: "UPCOMING",
          ),
          TripStatusButton(
            txt: "COMPLETED",
          ),
          TripStatusButton(
            txt: "CANCELED",
          ),
        ],
      ),
    );
  }
}
