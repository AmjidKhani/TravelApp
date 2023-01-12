import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData? icon;
  CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
           
            border: Border.all(color: Colors.grey[300]!),
            shape: BoxShape.circle),
        child: IconButton(
          
          splashRadius: 22,
        constraints: BoxConstraints.tightFor(width: 45,
          ),
          onPressed: () {}, icon:Icon(icon)));
  }
}
