import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textbutton extends StatelessWidget {
  final String text;
  final double? fontsize;
  final Function()? onPressed;
  const Textbutton({super.key, required this.text, this.onPressed,this.fontsize});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.zero,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: fontsize,
              color: Color(0xFF32B4EF)),
        ),
        onPressed: onPressed);
  }
}
