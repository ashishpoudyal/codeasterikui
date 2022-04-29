import 'package:flutter/material.dart';

class TripStatusButton extends StatefulWidget {
  final String txt;

  const TripStatusButton({Key? key, required this.txt}) : super(key: key);

  @override
  State<TripStatusButton> createState() => _TripStatusButtonState();
}

class _TripStatusButtonState extends State<TripStatusButton> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: (isActive) ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () {
            setState(() {
              isActive = !isActive;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(
              widget.txt,
              style: TextStyle(
                color: (isActive) ? Colors.white : Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            )),
          ),
        ),
      ),
    );
  }
}
