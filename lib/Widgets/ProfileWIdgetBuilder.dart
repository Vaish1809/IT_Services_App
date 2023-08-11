// widget_builder.dart

import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/ProfileScreens/ServiceHistory.dart';

Widget buildRow(BuildContext context ,  String text) {
  return Row(
    children: [
      Text(
        text,
        style: TextStyle(fontSize: 17.81, fontWeight: FontWeight.w400),
      ),
      Spacer(),
      IconButton(
        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceHistory(),));},
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 19,
        ),
      ),
    ],
  );
}

Widget buildMessageRow() {
   final TextEditingController controller = TextEditingController();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Send a message",
        
        style: TextStyle(fontSize: 17.81, fontWeight: FontWeight.w400),
      ),
      const SizedBox(height: 15),
      Container(
        height: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color.fromARGB(194, 219, 219, 219)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: TextField(
          controller: controller,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: "Write a message...",
            border: InputBorder.none,
          ),
          maxLines: null,
          expands: true,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Center(
        child: SizedBox(
          width: 120,
          height: 40,
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            backgroundColor: Color(0xFFECF9FF),
            child: Text(
              "Submit",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    ],
  );
}