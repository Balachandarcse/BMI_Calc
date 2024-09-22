import 'package:flutter/material.dart';
class IconCon extends StatelessWidget {
  IconCon({required this.gen,required this.text});
  final IconData gen;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(gen,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(text,style: TextStyle(
          fontSize: 18.0,
          color: Color(0xff8D8E98),
        ),
        ),
      ],
    );
  }
}
