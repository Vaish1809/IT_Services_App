// import 'package:flutter/material.dart';
// import 'package:orinova_it_servicesapp/Screens/ProfileScreens/ServiceHistory.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           bottomOpacity: 0,
//           title: Text(
//             "Profile",
//             style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700),
//             textAlign: TextAlign.center,
//           ),
//           centerTitle: true,
//         ),
//         body: Container(
//           margin: const EdgeInsets.only(top: 25),
//           constraints: BoxConstraints.expand(),
//           child: SingleChildScrollView(
//             child: Column(children: [
//               Container(
//                 decoration: BoxDecoration(
//                     //  borderRadius: BorderRadius.circular(25),
//                     color: Color.fromARGB(150, 236, 249, 255,)),
//                 height: 86,
//                 width: double.infinity,
//                 child: Stack(
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 25, right: 25),
//                       child: Row(
//                         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                               // margin: EdgeInsets.only(left: 40),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(16)),
//                               //  padding: EdgeInsets.only(top: 12,bottom: 12),
//                               height: 60,
//                               width: 60,
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(16),
//                                 child: Image.asset(
//                                   "assets/images/antiVirus.jpg",
//                                   fit: BoxFit.cover,
//                                 ),
//                               )),
//                           const SizedBox(
//                             width: 27,
//                           ),
//                           const Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "Vaishnavi Pdiya",
//                                 style: TextStyle(
//                                     fontSize: 17.81,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               Text(
//                                 "vbhfnid@gmial.com ",
//                                 style: TextStyle(fontSize: 11.52, height: 1),
//                               ),
//                             ],
//                           ),
//                           Spacer(),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.edit),
//                             iconSize: 25,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(25),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
//                   children: [
//                     Row(
//                       children: [
//                         Text(
//                           "Service History",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         Spacer(),
//                         IconButton(
//                           onPressed: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => ServiceHistory(),
//                             ));
//                           },
//                           icon: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                             size: 19,
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Customer Care",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         Spacer(),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                             size: 19,
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "FAQ's",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         Spacer(),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                             size: 19,
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "About us",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         Spacer(),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                             size: 19,
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Terms and Conditions",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         Spacer(),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                             size: 19,
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Text(
//                           "Privacy Policy",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         Spacer(),
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.arrow_forward_ios_rounded,
//                             size: 19,
//                           ),
//                         )
//                       ],
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Send a message",
//                           style: TextStyle(
//                               fontSize: 17.81, fontWeight: FontWeight.w400),
//                         ),
//                         const SizedBox(height: 15),
//                         Container(
//                           height: 88,
//                           decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadiusDirectional.circular(12),
//                               border: Border.all(
//                                   color: Color.fromARGB(194, 219, 219, 219))),
//                           padding: EdgeInsets.symmetric(horizontal: 8),
//                           child: TextField(
//                             style: TextStyle(fontSize: 15),
//                             decoration: InputDecoration(
//                               hintText: "Write a message...",
//                               border:
//                                   InputBorder.none, // Remove the default border
//                             ),
//                             maxLines: null, // Allow unlimited lines
//                             expands: true,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         Center(
//                           child: SizedBox(
//                             width: 120, // Set the desired width
//                             height: 40, // Set the desired height
//                             child: FloatingActionButton(
//                               onPressed: () {},
//                               elevation: 0,
//                               backgroundColor: Color.fromARGB(150, 236, 249, 255,),
//                               child: Text(
//                                 "Submit",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight
//                                         .w700), // Set the desired text size
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     Text("Sign out",style: TextStyle(fontSize: 17.81,fontWeight: FontWeight.w700,color: Color(0xFF32B4EF)),)
//                   ],
//                 ),
//               )
//             ])
//             ,
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/ProfileScreens/ServiceHistory.dart';
import 'package:orinova_it_servicesapp/Screens/ProfileScreens/SignOut.dart';
import 'package:orinova_it_servicesapp/Widgets/ProfileTopBarWidget.dart';
import 'package:orinova_it_servicesapp/Widgets/ProfileWIdgetBuilder.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            ProfileTopBar(),
            Container(
              margin: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildRow(context,"Service History"),
                  buildRow(context,"Customer Care"),
                  buildRow(context,"FAQ's"),
                  buildRow(context,"About us"),
                  buildRow(context,"Terms and Conditions"),
                  buildRow(context,"Privacy Policy"),
                  buildMessageRow(),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    child: Text(
                      "Sign out",
                      style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF32B4EF),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignOut(),));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
