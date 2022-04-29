import 'package:flutter/material.dart';

class TipsContainer extends StatefulWidget {
  final int amount;

  const TipsContainer({Key? key, required this.amount}) : super(key: key);

  @override
  State<TipsContainer> createState() => _TipsContainerState();
}

class _TipsContainerState extends State<TipsContainer> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        width: 55,
        decoration: BoxDecoration(
            // color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(7),
            border: (isActive == false)
                ? Border.all(color: Colors.grey.withOpacity(0.2))
                : Border.all(color: Colors.blue.withOpacity(1))),
        child: Material(
          color: Colors.grey.withOpacity(0.1),
          child: InkWell(
            splashColor: Colors.lightBlue,
            onTap: () {
              isActive = !isActive;
              setState(() {});
            },
            child: Center(
              child: Text("US \$" + widget.amount.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: (isActive == false)
                          ? Colors.grey.shade600
                          : Colors.blue.shade600,
                      fontSize: 20)),
            ),
          ),
        ));
  }
}
