import 'package:flutter/material.dart';

class Conbg extends StatelessWidget {
  Conbg({ required this.colour,required this.childCard});
  final Color colour;
  final Widget childCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0)
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}


