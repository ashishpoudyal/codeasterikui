import 'package:design_task/screens/rider_screen/rider_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../my_trips_screen/upcoming_ride_section.dart';

class RiderSliderSection extends StatefulWidget {
  const RiderSliderSection({Key? key, required this.pcc}) : super(key: key);
  final PanelController pcc;
  @override
  State<RiderSliderSection> createState() => _RiderSliderSectionState();
}

class _RiderSliderSectionState extends State<RiderSliderSection> {
  double rating = 1.0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Center(
          child: Container(
            height: 7,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),

        SizedBox(
          height: 25,
        ),

        //You arrived text section

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width / 10,
            ),
            const Text(
              "YOU ARRIVED",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.pcc.close();
                      });
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.grey.shade600,
                    ),
                  ),
                )),
          ],
        ),

        RiderDetails(),
        SizedBox(
          height: 20,
        ),

        //Rating Section

        RatingBar.builder(
          unratedColor: Colors.grey.withOpacity(0.3),
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (ratings) {
            setState(() {
              rating = ratings;
            });
            print(ratings);
          },
        ),
        SizedBox(
          height: 25,
        ),

        // say something about your experience
      ],
    );
  }
}
