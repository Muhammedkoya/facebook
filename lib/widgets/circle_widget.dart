import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;

  CircleWidget({
    required this.displayImage,
    required this.displayStatus,
    this.displayBorder = false,
    this.height = 45,
    this.width = 45,
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
                      width: 2,
                    )
                    : Border(),
          ),
          margin: EdgeInsets.only(left: 10, right: 10),
          // padding: EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),

            child: Image.asset(
              fit: BoxFit.cover,
              displayImage,
              width: width,
              height: height,
            ),
          ),
        ),
        displayStatus
            ? Positioned(
              right: 8,
              bottom: 4,
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
