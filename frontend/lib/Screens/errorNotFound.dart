import 'package:flutter/material.dart';

class errorNotFound extends StatelessWidget {
  const errorNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text("404 \n This Page Doesnt exist",style: TextStyle(fontSize: 11.52, color: Color(0xFF303841), height: 0.8),),
      ),
    );
  }
}