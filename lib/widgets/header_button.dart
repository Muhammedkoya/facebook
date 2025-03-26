import 'package:flutter/material.dart';

Widget headerButton({
  required IconData buttonIcon,
  required Color buttonColor,
  required String buttonText,
  required void Function() buttonAction,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(buttonIcon, color: buttonColor, size: 30),
    label: Text(
      buttonText,
      style: TextStyle(fontSize: 13, color: Colors.black),
    ),
  );
}
