import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
      child: Icon(Icons.check, size: 10, color: Colors.white),
    );
  }
}
