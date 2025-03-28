import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String name;
  final String mutualFriends;
  final String image;

  SuggestionCard({
    required this.name,
    required this.mutualFriends,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 228, 228, 228),
      ),
      width: 350,
      child: Column(
        children: [
          Container(
            height: 290,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),

          ListTile(
            title: Text(name, textAlign: TextAlign.start),
            subtitle: Text(mutualFriends),
          ),

          SizedBox(height: 10),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconButton(
                  const Color.fromARGB(255, 39, 131, 207),
                  "Add Friend",
                  Colors.white,
                  145,
                  37,
                  Icons.person_2_outlined,
                ),
                iconButton(
                  const Color.fromARGB(153, 202, 200, 200),
                  "Remove",
                  Colors.black,
                  105,
                  37,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget iconButton(
    Color buttonColour,
    String buttonText,
    Color textColor,
    double width,
    double height, [
    IconData? buttonIcon,
  ]) {
    return SizedBox(
      width: width,
      height: height,
      child:
          buttonIcon != null
              ? TextButton.icon(
                onPressed: () {
                  print("$buttonText button clicked");
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(buttonColour),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                label: Text(
                  buttonText,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(buttonIcon, color: Colors.white),
              )
              : TextButton(
                onPressed: () {
                  print("$buttonText button clicked");
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(buttonColour),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
    );
  }
}
