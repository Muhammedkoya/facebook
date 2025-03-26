import 'package:facebook/widgets/circle_widget.dart';
import 'package:facebook/widgets/circular_button.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String story;
  final String avatar;
  final bool displayProfile;
  final String labelText;
  final bool displayBorder;

  StoryCard({
    required this.story,
    required this.avatar,
    required this.displayProfile,
    required this.labelText,
    this.displayBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 5, right: 5, top: 7, bottom: 7),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 3,
            child:
                !displayProfile
                    ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {
                        print("create new story");
                      },
                      iconColor: Colors.blue,
                    )
                    : CircleWidget(
                      displayImage: avatar,
                      displayStatus: false,
                      displayBorder: displayBorder,
                      width: 38,
                      height: 38,
                    ),
          ),
          Positioned(
            bottom: 7,
            left: 12,
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
