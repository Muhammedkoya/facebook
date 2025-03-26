import 'package:facebook/assets.dart';
import 'package:facebook/sections/header_button_section.dart';
import 'package:facebook/widgets/blue_tick.dart';
import 'package:facebook/widgets/circle_widget.dart';
import 'package:facebook/widgets/header_button.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String displayImage;
  final String name;
  final String postedAt;
  final String postImage;
  final String postTitle;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.displayImage,
    required this.name,
    required this.postedAt,
    required this.postTitle,
    required this.postImage,
    required this.commentCount,
    required this.likeCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostHeader(),
          PostTitle(),
          PostImage(context),
          PostFooter(),
          Divider(color: Colors.grey[300], thickness: 1),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonColor: Colors.grey,
              buttonText: "Like",
              buttonAction: () {
                print("Like Button Clicked");
              },
            ),
            buttonTwo: headerButton(
              buttonIcon: Icons.message_outlined,
              buttonColor: Colors.grey,
              buttonText: "Chat",
              buttonAction: () {
                print("Chat Button Clicked");
              },
            ),
            buttonThree: headerButton(
              buttonIcon: Icons.share_outlined,
              buttonColor: Colors.grey,
              buttonText: "Share",
              buttonAction: () {
                print("Share Button Clicked");
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget PostFooter() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up_sharp,
                    size: 11,
                    color: Colors.white,
                  ),
                ),
                displayText(likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(commentCount),
                SizedBox(width: 5),
                displayText("Comments"),
                SizedBox(width: 10),
                displayText(shareCount),
                SizedBox(width: 5),
                displayText("Shares"),
                SizedBox(width: 5),
                CircleWidget(
                  displayImage: kendallJenner,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("drop down pressed");
                  },
                  icon: Icon(Icons.arrow_drop_down),
                  color: Colors.grey[700],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText(String text) {
    return Text(text, style: TextStyle(color: Colors.grey[700]));
  }

  Widget PostTitle() {
    return Container(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(postTitle),
    );
  }

  Widget PostImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: Image.asset(
        postImage,
        fit: BoxFit.cover, // Stretches image to fit container (may distort)
      ),
    );
  }

  Widget PostHeader() {
    return ListTile(
      leading: CircleWidget(displayImage: displayImage, displayStatus: false),
      title: Row(
        children: [
          Text(name, style: TextStyle(color: Colors.black)),
          SizedBox(width: 10),
          BlueTick(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postedAt),
          SizedBox(width: 5),
          Icon(Icons.public, color: Colors.grey[700], size: 15),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("more button clicker");
        },
        icon: Icon(Icons.more_horiz_rounded, color: Colors.grey[700]),
      ),
    );
  }
}
