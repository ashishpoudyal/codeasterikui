import 'package:design_task/screens/my_trips_screen/top_row.dart';
import 'package:flutter/material.dart';

import 'trip_status.dart';
import 'upcoming_ride_section.dart';

class MyTrips extends StatelessWidget {
  const MyTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F9FD),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28.0, 40, 28, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbarsection
            TopRowMyTrips(),
            SizedBox(
              height: 10,
            ),
            //My trips
            Text(
              "My Trips",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),

            //status row upcoming cmpelete
            TripStatus(),

            //Upcoming ride section

            UpComingRideSection(),
            UpComingRideSection(),
          ],
        ),
      ),
    );
  }
}
