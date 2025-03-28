import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestion_card.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
              onPressed: () {
                print("more button in people you may know section clicked");
              },
              icon: Icon(Icons.more_horiz),
            ),
          ),
          Container(
            height: 450,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  image: jimCarry,
                  name: "Jim Carrey",
                  mutualFriends: "10 Mutual Friends",
                ),
                SuggestionCard(
                  image: mattDamon,
                  name: "Matt Damon",
                  mutualFriends: "6 Mutual Friends",
                ),
                SuggestionCard(
                  image: benAffleck,
                  name: "Ben Affleck",
                  mutualFriends: "5 Mutual Friends",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
