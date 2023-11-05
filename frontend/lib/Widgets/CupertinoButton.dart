import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cupertinobutton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const Cupertinobutton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: const Color.fromARGB(
        150,
        236,
        249,
        255,
      ),
      borderRadius: BorderRadius.circular(15),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF303841)),
              )
    );
  }
}
