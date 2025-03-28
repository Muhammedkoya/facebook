import 'package:facebook/assets.dart';
import 'package:facebook/sections/header_button_section.dart';
import 'package:facebook/sections/room_section.dart';
import 'package:facebook/sections/status_section.dart';
import 'package:facebook/sections/story_section.dart';
import 'package:facebook/sections/suggestion_section.dart';
import 'package:facebook/widgets/circular_button.dart';
import 'package:facebook/widgets/header_button.dart';
import 'package:facebook/widgets/post_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget ThinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget ThickDivider = Divider(thickness: 10, color: Colors.grey[300]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("this is search button");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("this is chat button");
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            ThinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonIcon: Icons.video_call,
                buttonColor: Colors.red,
                buttonText: "Live",
                buttonAction: () {
                  print("Live Button Pressed");
                },
              ),
              buttonTwo: headerButton(
                buttonIcon: Icons.photo_library,
                buttonColor: Colors.green,
                buttonText: "Photo",
                buttonAction: () {
                  print("Phot Button Pressed");
                },
              ),
              buttonThree: headerButton(
                buttonIcon: Icons.video_call,
                buttonColor: Colors.purple,
                buttonText: "Room",
                buttonAction: () {
                  print("Room Button Pressed");
                },
              ),
            ),
            ThickDivider,
            RoomSection(),
            ThickDivider,
            StorySection(),
            ThickDivider,
            PostCard(
              displayImage: zendaya,
              name: "Zendaya",
              showBlueTick: true,
              postedAt: "5 hr ",
              postTitle: "My Buddies😘",
              postImage: zendayaAndFriends,
              commentCount: "4K",
              likeCount: "12K",
              shareCount: "5K",
            ),

            ThickDivider,
            PostCard(
              displayImage: srk,
              name: "i_am_srk",
              showBlueTick: true,
              postedAt: "1 day ago",
              postImage: diwali,
              postTitle: "",
              likeCount: "3K",
              commentCount: "2K",
              shareCount: "2K",
            ),
            ThickDivider,
            PostCard(
              displayImage: henryCavill,
              showBlueTick: true,
              name: "Henry Cavill",
              postedAt: "3 days ago",
              postTitle:
                  "Massive congrats to Brad Pitt and the F1 team! Bringing real racing to the big screen is no small feat, and I’ve got no doubt this film is going to be something special. Wishing you all the success—can’t wait to see it in action!",
              postImage: f1,
              commentCount: "5K",
              likeCount: "7K",
              shareCount: "3K",
            ),
            ThickDivider,
            SuggestionSection(),
            PostCard(
              displayImage: kendallJenner,
              name: "Kendall Jenner",
              postedAt: "5 days ago",
              postImage: kendallAndFriends,
              postTitle: "With My Guys!!",
              likeCount: "23",
              commentCount: "2",
              shareCount: "0",
            ),
            ThickDivider,
          ],
        ),
      ),
    );
  }
}
