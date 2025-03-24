import 'package:facebook/assets.dart';
import 'package:facebook/widgets/story_card.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            story: jasonStatham,
            avatar: jasonStatham,
            displayProfile: false,
            labelText: "Add To Story",
          ),
          StoryCard(
            story: thor,
            avatar: chrisHemsworth,
            displayProfile: true,
            labelText: "chris hemsworth",
            displayBorder: true,
          ),
          StoryCard(
            story: valerian,
            avatar: zendaya,
            displayProfile: true,
            labelText: "zendaya",
            displayBorder: true,
          ),
          StoryCard(
            story: peaceMaker,
            avatar: willSmith,
            displayProfile: true,
            labelText: "will smith",
            displayBorder: true,
          ),
          StoryCard(
            story: kardashian,
            avatar: kendallJenner,
            displayProfile: true,
            labelText: "kendall",
            displayBorder: true,
          ),
          StoryCard(
            story: mortalEngines,
            avatar: henryCavill,
            displayProfile: true,
            labelText: "henry cavill",
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
