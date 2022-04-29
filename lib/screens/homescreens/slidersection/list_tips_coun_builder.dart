import 'package:flutter/material.dart';

import 'tips_container.dart';

class TipsGridBuilder extends StatelessWidget {
  const TipsGridBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 45 / 40,
              crossAxisSpacing: 10,
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 20),
          itemCount: 4,
          itemBuilder: (BuildContext ctx, index) {
            return TipsContainer(amount: index);
          }),
    );
  }
}
