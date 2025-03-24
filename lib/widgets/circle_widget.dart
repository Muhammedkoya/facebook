import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;

  CircleWidget({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                displayBorder
                    ? Border.all(
                      color: const Color.fromARGB(255, 68, 162, 255),
                      width: 3,
                    )
                    : Border(),
          ),
          padding: EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),

            child: Image.asset(
              fit: BoxFit.cover,
              displayImage,
              width: 45,
              height: 45,
            ),
          ),
        ),
        displayStatus
            ? Positioned(
              right: 4,
              bottom: 3,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.white),
                ),
              ),
            )
            : SizedBox(),
      ],
    );
  }
}
