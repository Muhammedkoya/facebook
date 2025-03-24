import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  Widget headerButton({
    required IconData buttonIcon,
    required Color buttonColor,
    required String buttonText,
    required void Function() buttonAction,
  }) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(buttonIcon, color: buttonColor, size: 35),
      label: Text(buttonText, style: TextStyle(fontSize: 13)),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );

    return Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonIcon: Icons.video_call,
            buttonColor: Colors.red,
            buttonText: "Live",
            buttonAction: () {
              print("live button clicked");
            },
          ),
          verticalDivider,
          headerButton(
            buttonColor: Colors.green,
            buttonAction: () {
              print("photo button clicked");
            },
            buttonText: "Photo",
            buttonIcon: Icons.photo_library,
          ),
          verticalDivider,
          headerButton(
            buttonIcon: Icons.video_call,
            buttonColor: Colors.purple,
            buttonText: "Room",
            buttonAction: () {
              print("Room button clicked");
            },
          ),
        ],
      ),
    );
  }
}
