import 'package:design_task/screens/rider_screen/rider_slider_section.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../homescreens/app_bar_section.dart';
import '../homescreens/star_icon_section.dart';

class NavigateToRiderScreen extends StatefulWidget {
  const NavigateToRiderScreen({Key? key}) : super(key: key);

  @override
  State<NavigateToRiderScreen> createState() => _NavigateToRiderScreenState();
}

class _NavigateToRiderScreenState extends State<NavigateToRiderScreen> {
  @override
  Widget build(BuildContext context) {
    PanelController pcc = PanelController();
    return Scaffold(
      body: SlidingUpPanel(
          controller: pcc,
          maxHeight: 500,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          panelBuilder: (ScrollController sc) => ListView(
                padding: EdgeInsets.only(top: 7),
                controller: sc,
                children: [
                  RiderSliderSection(
                    pcc: pcc,
                  )
                ],
              ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/mapimage.png"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBarSection(),
                SizedBox(
                  height: 25,
                ),
                StarIconSection(),
              ],
            ),
          )),
    );
  }
}
