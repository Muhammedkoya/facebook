import 'package:facebook/assets.dart';
import 'package:facebook/widgets/blue_tick.dart';
import 'package:facebook/widgets/circle_widget.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String displayImage;
  final String name;
  final String postedAt;
  final String postImage;
  final String postTitle;

  PostCard({
    required this.displayImage,
    required this.name,
    required this.postedAt,
    required this.postTitle,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [PostHeader(), PostTitle(), PostImage(context), PostFooter()],
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
                displayText("10K"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText("1K"),
                SizedBox(width: 5),
                displayText("Comments"),
                SizedBox(width: 10),
                displayText("2K"),
                SizedBox(width: 5),
                displayText("Shares"),
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
