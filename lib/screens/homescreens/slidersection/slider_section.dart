import 'package:design_task/screens/homescreens/slidersection/list_tips_coun_builder.dart';
import 'package:design_task/screens/homescreens/slidersection/tips_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({Key? key, required this.pc}) : super(key: key);
  final PanelController pc;
  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
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

        //awesome text section

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width / 10,
            ),
            const Text("AWESOME!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.pc.close();
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

        SizedBox(
          height: 20,
        ),
        //you are rated jhon doe section

        Text(
          "You rated John Doe " + rating.toString() + " stars",
          style: TextStyle(
              fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 20,
        ),

        //Rating Section

        RatingBar.builder(
          unratedColor: Colors.grey.withOpacity(0.3),
          initialRating: 4,
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
          height: 15,
        ),

        // say something about your experience

        Padding(
          padding: const EdgeInsets.fromLTRB(28.0, 0, 28, 0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 10, 0, 0),
              child: TextFormField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Say something about your experience",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(1))),
                minLines: 6,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        //ass a tip for john doe

        Text(
          "ADD A TIP FOR JOHN DOE",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),

        // tips container
        TipsGridBuilder(),
        SizedBox(
          height: 20,
        ),

        //Enter custom amount

        Text(
          "Enter custom amount",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(28.0, 0, 28, 0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              // splashColor: Colors.amber,
              onTap: () {},
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
