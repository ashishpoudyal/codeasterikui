import 'package:design_task/screens/homescreens/app_bar_section.dart';
import 'package:design_task/screens/homescreens/slidersection/slider_section.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'star_icon_section.dart';

class HomePage extends StatelessWidget {
  PanelController pc = new PanelController();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
          controller: pc,
          maxHeight: 500,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          panelBuilder: (ScrollController sc) => ListView(
                padding: EdgeInsets.only(top: 7),
                controller: sc,
                children: [
                  SliderSection(pc: pc),
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
