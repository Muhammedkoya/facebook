import 'package:facebook/sections/header_button_section.dart';
import 'package:facebook/sections/room_section.dart';
import 'package:facebook/sections/status_section.dart';
import 'package:facebook/sections/story_section.dart';
import 'package:facebook/widgets/circular_button.dart';
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
            HeaderButtonSection(),
            ThickDivider,
            RoomSection(),
            ThickDivider,
            StorySection(),
            ThickDivider,
          ],
        ),
      ),
    );
  }
}
