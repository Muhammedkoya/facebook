import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;

  const CircularButton({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[300],
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(buttonIcon, color: iconColor, size: 25),
      ),
    );
  }
}
