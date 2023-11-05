import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  const TextBox({super.key, required this.labelText, this.controller,this.validator, this.obscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:validator ,
      decoration: InputDecoration(
        
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        labelText: labelText,
      ),
    );
  }
}
