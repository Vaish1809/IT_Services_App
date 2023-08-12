import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_container/easy_container.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:orinova_it_servicesapp/Screens/Wishlist.dart';
import 'package:orinova_it_servicesapp/Screens/notifications.dart';
import 'package:orinova_it_servicesapp/Screens/selected%20categories.dart';
//import 'package:animated_flip_counter/animated_flip_counter.dart';

class MainHomePage extends StatefulWidget {
  MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1523961131990-5ea7c61b2107?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 25, right: 25),
              child:
               Row(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 40,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      size: 30,
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistScreen(),)
                    );},
                    color: Colors.redAccent,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotificationsScreen(),
                      ));
                    },
                    icon: const Icon(Icons.notifications_none_rounded),
                    iconSize: 30,
                  )
                ],
              ),
       ),
            const SizedBox(
              height: 40,
            ),
            CarouselSlider(
              items: imgList
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                height: 211,
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: double.infinity,
              height: 73,
              color: Color.fromARGB(150, 236, 249, 255,),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      
                    Text(
                        "350",
                        style: TextStyle(
                            fontSize: 22.14, fontWeight: FontWeight.bold, color: Color(0xFF303841)
 
  ),
                      ),
                      Text(
                        "projects done",
                        style: TextStyle(fontSize: 11.52, color: Color(0xFF303841)), 
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "350",
                        style: TextStyle(
                            fontSize: 22.14, fontWeight: FontWeight.bold, color: Color(0xFF303841)),
                      ),
                      Text(
                        "ongoing projects",
                        style: TextStyle(fontSize: 11.52, color: Color(0xFF303841)),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "350",
                        style: TextStyle(
                            fontSize: 22.14, fontWeight: FontWeight.bold, color: Color(0xFF303841)),
                      ),
                      Text(
                        "projects done",
                        style: TextStyle(fontSize: 11.52, color: Color(0xFF303841)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child:
               Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Top Stacks",
                    style:
                        TextStyle(fontSize: 22.14, fontWeight: FontWeight.bold, color: Color(0xFF303841)),
                  )),
         ), const SizedBox(
              height: 10,
            ),
            Container(
              height: 61,
              padding: EdgeInsets.only(right: 25, left: 25),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
        

       
                  child: Row(
                    
                    children: [
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                      Image.asset("assets/images/html.png"),
                      const SizedBox(
                        width: 19,
                        height: 61,
                      ),
                    ],
                  ),
                  ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25,top: 18),
             child:
               Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Our Services",
                    style:
                        TextStyle(fontSize: 22.14, fontWeight: FontWeight.bold, color: Color(0xFF303841)),
                  )),
       ),
const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 100),
              child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: List.generate(
                    6, // Replace with your desired count
                    (index) => GestureDetector(
                      onTap: (){
                                   Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedCategoriesList(),
                            ),
                          );
                              },
                      child: Container(
                        height: 110,
                        width: 180,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              top: 40,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x33DBDBDB),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                             alignment: Alignment.bottomCenter,
                             padding: EdgeInsets.only(bottom: 10),
                                child: const Text(
                                  "Website",
                                  style: TextStyle(
                                      fontSize: 17.81, fontWeight: FontWeight.w400, color: Color(0xFF303841)),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 50,
                              right: 50,
                              child: Image.asset(
                                "assets/images/Android.png", // Replace with your image URL
                                fit: BoxFit.cover,
                                height: 81,
                                width: 81,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            )
                       ],
        ),
      ),
    );
  }
}
            // Wrap(
            //   spacing: 20,
            //   runSpacing: 20,
            //  children:
            //   List.generate(
            //     10, // Replace with your desired count
            //     (index) => Container(
            //       width: (MediaQuery.of(context).size.width - 70) / 2,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //       ),
            //   child: Center(
            //     child: Stack(
            //       children: [
            // SizedBox(
            //           height: 105,
            //           width: 180,
            //   // color: const Color.fromARGB(255, 250, 250, 250),
            //         child: Container(height: 66,color: Color(0xFF303841)12,),
            //         ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(height: 66,alignment: Alignment.bottomCenter,color: Color(0xFF303841)12,)),
            //       Positioned(
            //         bottom: 0,
            //         child: Container(
            //           color: Color.fromARGB(255, 138, 81, 81),
            //           height: 66,
            //           width: (MediaQuery.of(context).size.width - 70) / 2,
            //         ),
            //       ),
            //       Column(
            //         children: [
            //           Container(
            //             child: Image.asset(
            //               "assets/images/Android.png",
            //               fit: BoxFit.fill,
            //             ),
            //             height: 80,
            //             width: 80,
            //           ),
            //           Text(
            //             "Android App",
            //             style: TextStyle(fontSize: 17.81),
            //           ),
            //         ],
            //       ),
            //               ],
            //             ),
            //            ),
            //         ),
            //       ),
            //  ),
            //  ),
   
// Container(

//   child: Column(children:[ Image.asset("assets/images/Android.png"),
//   Container(height: 66,width: 180,)]

//   ),
// )
//  Expanded(
//                   child: GridView.builder(
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2, // Two columns in the grid
//                           crossAxisSpacing: 20,
//                           mainAxisSpacing: 23,
//                           childAspectRatio: 2.0),
//                       itemCount:
//                           15, // Replace with the total number of rectangles you want
//                       itemBuilder: (context, index) {
//                         return SizedBox(
//                           height: 77,

//                           child: GestureDetector(
//                             onTap: (){
//                                  Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => SelectedCategoriesList(),
//                           ),
//                         );
//                             },
//                             child: Container(

//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Color.fromARGB(150, 236, 249, 255,),
//                               ),
//                               // Replace with your desired color
//                               child: Center(
//                                 child: Text(
//                                   "Android Development",
//                                   style: TextStyle(
//                                     color: Color(0xFF303841),
//                                     fontSize: 15.81,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       })

// GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, // Two columns in the grid
//               crossAxisSpacing: 20,
//               mainAxisSpacing: 23,
//              ),
//               itemCount:4 ,
//               itemBuilder: (context, index) {
//             return Container(color: Colors.blue,
// child: Column(
//   children: [
//     Container(
//       child: Image.asset(
//         "assets/images/Android.png",
//         fit: BoxFit.fill,
//       ),
//       height: 80,
//       width: 80,
//     ),
//     Text(
//       "Android App",
//       style: TextStyle(fontSize: 17.81),
//     )
//   ],
// ),
// );
//   },

// )
//           ],
//         ),
//       ),
//     );
//   }
// }

// return: Container(color: Colors.blue,
//                 child: Column(
//                   children: [
//                     Container(
//                       child: Image.asset(
//                         "assets/images/Android.png",
//                         fit: BoxFit.fill,
//                       ),
//                       height: 80,
//                       width: 80,
//                     ),
//                     Text(
//                       "Android App",
//                       style: TextStyle(fontSize: 17.81),
//                     )
//                   ],
//                 ),
//               );

//               Container(
//  alignment: Alignment.bottomCenter,
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color:Color.fromARGB(200, 219, 219, 219),
//             ),
//             height: 66,
//             width: 180,
//               )

//           child:Column(
// children: [
//   Image.asset("assets/images/Android.png",fit: BoxFit.contain,height: 82,width:80 ,),
//        Text("Android App",style: TextStyle(fontSize: 17.81),)] ,
//    ),

// Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Image.asset("assets/images/Android.png",fit: BoxFit.contain,height: 82,width:80 ,),
//       Text("Android App",style: TextStyle(fontSize: 17.81),)
//     ],
//    ),
//  )

//         ]

//     ),
//           )
//         ]
//       )

//     );
//   }
// }

//       GridView(
//           gridDelegate:
//               SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 20,
// ),
// padding: EdgeInsets.only(left: 25,right: 25),
// scrollDirection: Axis.vertical,
// children: [
//   Container(
//     height: 107,
//     child: Stack(children: [
//       Container(
//         height: 66,
//         width: 180,
//         color:Color.fromARGB(200, 219, 219, 219),
//  )
//     ]),
//   )
// ],
// ),

//         ],
//       ),
//     );
//   }
// }
