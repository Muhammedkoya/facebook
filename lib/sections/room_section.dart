import 'package:facebook/assets.dart';
import 'package:facebook/widgets/circle_widget.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget createRoomButton() {
    return OutlinedButton.icon(
      onPressed: () {
        print("created room");
      },
      icon: Icon(Icons.video_call, color: Colors.purple, size: 30),
      label: Text(
        "Create \n Room",
        style: TextStyle(color: Colors.blue[400], fontSize: 13),
      ),
      style: ButtonStyle(
        // Define the border color and thickness
        side: WidgetStateProperty.all(
          BorderSide(
            color: Colors.blue[400]!, // Set the border color
            width: 1, // Increase the border thickness
          ),
        ),
        shape: WidgetStateProperty.all(
          StadiumBorder(), // Stadium-shaped border
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 12,
          ), // Adjust padding to make the button more compact
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          //SizedBox(width: 5),
          CircleWidget(displayImage: chrisHemsworth, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: kendallJenner, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: jasonStatham, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: henryCavill, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: srk, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: zendaya, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: ryanGosling, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: annaHathaway, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: andrewGarfield, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: aang, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: willSmith, displayStatus: true),
          //SizedBox(width: 5),
          CircleWidget(displayImage: bradPitt, displayStatus: true),
        ],
      ),
    );
  }
}
