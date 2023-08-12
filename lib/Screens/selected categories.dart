import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/ServiceCard.dart';
import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/model.dart';
import 'package:orinova_it_servicesapp/Screens/Service_details.dart';
import 'package:custom_check_box/custom_check_box.dart';
class SelectedCategoriesList extends StatefulWidget {
  const SelectedCategoriesList({Key? key}) : super(key: key);

  @override
  _SelectedCategoriesListState createState() => _SelectedCategoriesListState();
}

class _SelectedCategoriesListState extends State<SelectedCategoriesList> {
  final TextEditingController controller = TextEditingController();

  List<ServiceModel> services = [
    // Populate this list with your service data
    ServiceModel(
      title: "Anti Virus Installation",
      description: "Lorem ipsum dolor sit amet, consecter",
      provider: "Abc Service Provider",
      rating: 4.3,
      imageUrl: "assets/images/antiVirus.jpg",
      price: 5999,
    ),
    // Add more service items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Anti Virus Installation",
          style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              
                 Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x33DBDBDB),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      labelStyle: const TextStyle(fontSize: 16),
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          controller.clear();
                        },
                      ),
                    ),
                  ),
                ),
            
              SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
             SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service), 
              SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),
               SizedBox(height: 21),
              for (var service in services) ServiceCard(service),

            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/ServiceCard.dart';
// import 'package:orinova_it_servicesapp/Screens/Selected%20Categories%20WIdgets/model.dart';
// import 'package:orinova_it_servicesapp/Screens/Service_details.dart';

// class SelectedCategoriesList extends StatefulWidget {
//   const SelectedCategoriesList({super.key});

//   @override
//   State<SelectedCategoriesList> createState() => _SelectedCategoriesListState();
// }

// class _SelectedCategoriesListState extends State<SelectedCategoriesList> {
//   final TextEditingController controller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     List<ServiceModel> services = [
//       // Populate this list with your service data
//       ServiceModel(
//         title: "Anti Virus Installation",
//         description: "Lorem ipsum dolor sit amet, consecter",
//         provider: "Abc Service Provider",
//         rating: 4.3,
//         imageUrl: "assets/images/antiVirus.jpg",
//         price: 5999,
//       ),
//       // Add more service items here
//     ];

//     return Scaffold(
//       extendBodyBehindAppBar: false,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Text(
//           "Anti Virus Installation",
//           style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700),
//           textAlign: TextAlign.center,
//         ),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(25),
//         constraints: BoxConstraints.expand(),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               GestureDetector(
//                 onTap:    (){  Navigator.push(context, MaterialPageRoute(builder: (context) => ServiceDetails(),));},
//                 child: Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0x33DBDBDB),
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: TextField(
//                     style: TextStyle(
//                       fontSize: 16,
//                     ),
//                     controller: controller,
//                     decoration: InputDecoration(
//                       hintText: "Search ",
//                       border: InputBorder.none,
//                       labelStyle: const TextStyle(fontSize: 16),
//                       prefixIcon: Icon(Icons.search, color: Colors.black),
//                       suffixIcon: IconButton(
//                         icon: const Icon(Icons.clear),
//                         onPressed: () {
//                           controller.clear();
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               // ... Other widgets ...
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//               for (var service in services) ServiceCard(service),
//               SizedBox(height: 21),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }















// // import 'package:flutter/material.dart';

// // class SelectedCategoriesList extends StatefulWidget {
// //   const SelectedCategoriesList({super.key});

// //   @override
// //   State<SelectedCategoriesList> createState() => _SelectedCategoriesListState();
// // }

// // class _SelectedCategoriesListState extends State<SelectedCategoriesList> {
// //   @override
// //   Widget build(BuildContext context) {
// //     final TextEditingController controller = TextEditingController();
// //     return Scaffold(
// //       extendBodyBehindAppBar: false,
// //       //backgroundColor: Colors.white,
// //       appBar: AppBar(
// //         backgroundColor: Colors.white,
// //         centerTitle: true,
// //         title: Text(
// //           "Anti Virus Installation",
// //           style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700),
// //           textAlign: TextAlign.center,
// //         ),
// //       ),
// //       body: Container(
// //         margin: const EdgeInsets.all(25),
// //         constraints: BoxConstraints.expand(),
// //         // padding: const EdgeInsets.all(22),
// //         child: SingleChildScrollView(
// // scrollDirection: Axis.vertical,
// //           child: Column(
// //             children: [
// //               Container(
// //                 width: double.infinity,
// //                 decoration: BoxDecoration(
// //                   color: Color(0x33DBDBDB),
// //                   borderRadius: BorderRadius.circular(16),
// //                 ),
// //                 child: TextField(
// //                   style: TextStyle(
// //                     fontSize: 16,
// //                   ),
// //                   controller: controller,
// //                   decoration: InputDecoration(
// //                     hintText: "Search ",
// //                     border: InputBorder.none,
// //                     labelStyle: const TextStyle(fontSize: 16),
// //                     prefixIcon: Icon(Icons.search, color: Colors.black),
// //                     suffixIcon: IconButton(
// //                       icon: const Icon(Icons.clear),
// //                       onPressed: () {
// //                         controller.clear();
// //                       },
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(
// //                 height: 21,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     color: Color(0xFFECF9FF)),
// //                 height: 114,
// //                 width: double.infinity,
// //                 child: Stack(children: [
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                           margin: EdgeInsets.only(left: 14, right: 14),
// //                           decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(16)),
// //                           height: 71,
// //                           width: 62,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(16),
// //                             child: Image.asset(
// //                               "assets/images/antiVirus.jpg",
// //                               fit: BoxFit.cover,
// //                             ),
// //                           )),
// //                       const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "Anti Virus Installation",
// //                             style: TextStyle(
// //                                 fontSize: 17.81, fontWeight: FontWeight.w700),
// //                           ),
// //                           Text(
// //                             "Lorem ipsum dolor sit amet, consecter ",
// //                             style: TextStyle(
// //                               fontSize: 11.52,
// //                             ),
// //                           ),
// //                           Text(
// //                             "Abc Service Provider ",
// //                             style: TextStyle(fontSize: 11.52, height: 0.8),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rate,
// //                                 size: 15,
// //                               ),
// //                               const SizedBox(width: 5),
// //                               Text(
// //                                 "4.3",
// //                                 style: TextStyle(fontSize: 11.52),
// //                               )
// //                             ],
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Align(
// //                     alignment: Alignment.topRight,
// //                     child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.favorite_border_rounded,
// //                           size: 25,
// //                           color: Colors.redAccent,
// //                         )),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         IconButton(
// //                             onPressed: () {},
// //                             icon: Icon(
// //                               Icons.trolley,
// //                               size: 25,
// //                             )),
// //                         Text("INR 5,999 "),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 ]),
// //               ),
// //               const SizedBox(
// //                 height: 21,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     color: Color(0xFFECF9FF)),
// //                 height: 114,
// //                 width: double.infinity,
// //                 child: Stack(children: [
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                           margin: EdgeInsets.only(left: 14, right: 14),
// //                           decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(16)),
// //                           height: 71,
// //                           width: 62,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(16),
// //                             child: Image.asset(
// //                               "assets/images/antiVirus.jpg",
// //                               fit: BoxFit.cover,
// //                             ),
// //                           )),
// //                       const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "Anti Virus Installation",
// //                             style: TextStyle(
// //                                 fontSize: 17.81, fontWeight: FontWeight.w700),
// //                           ),
// //                           Text(
// //                             "Lorem ipsum dolor sit amet, consecter ",
// //                             style: TextStyle(
// //                               fontSize: 11.52,
// //                             ),
// //                           ),
// //                           Text(
// //                             "Abc Service Provider ",
// //                             style: TextStyle(fontSize: 11.52, height: 0.8),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rate,
// //                                 size: 15,
// //                               ),
// //                               const SizedBox(width: 5),
// //                               Text(
// //                                 "4.3",
// //                                 style: TextStyle(fontSize: 11.52),
// //                               )
// //                             ],
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Align(
// //                     alignment: Alignment.topRight,
// //                     child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.favorite_border_rounded,
// //                           size: 25,
// //                           color: Colors.redAccent,
// //                         )),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         IconButton(
// //                             onPressed: () {},
// //                             icon: Icon(
// //                               Icons.trolley,
// //                               size: 25,
// //                             )),
// //                         Text("INR 5,999 "),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 ]),
// //               ),
        
// //                   const SizedBox(
// //                 height: 21,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     color: Color(0xFFECF9FF)),
// //                 height: 114,
// //                 width: double.infinity,
// //                 child: Stack(children: [
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                           margin: EdgeInsets.only(left: 14, right: 14),
// //                           decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(16)),
// //                           height: 71,
// //                           width: 62,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(16),
// //                             child: Image.asset(
// //                               "assets/images/antiVirus.jpg",
// //                               fit: BoxFit.cover,
// //                             ),
// //                           )),
// //                       const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "Anti Virus Installation",
// //                             style: TextStyle(
// //                                 fontSize: 17.81, fontWeight: FontWeight.w700),
// //                           ),
// //                           Text(
// //                             "Lorem ipsum dolor sit amet, consecter ",
// //                             style: TextStyle(
// //                               fontSize: 11.52,
// //                             ),
// //                           ),
// //                           Text(
// //                             "Abc Service Provider ",
// //                             style: TextStyle(fontSize: 11.52, height: 0.8),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rate,
// //                                 size: 15,
// //                               ),
// //                               const SizedBox(width: 5),
// //                               Text(
// //                                 "4.3",
// //                                 style: TextStyle(fontSize: 11.52),
// //                               )
// //                             ],
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Align(
// //                     alignment: Alignment.topRight,
// //                     child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.favorite_border_rounded,
// //                           size: 25,
// //                           color: Colors.redAccent,
// //                         )),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         IconButton(
// //                             onPressed: () {},
// //                             icon: Icon(
// //                               Icons.trolley,
// //                               size: 25,
// //                             )),
// //                         Text("INR 5,999 "),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 ]),
// //               ),
        
        
// //                   const SizedBox(
// //                 height: 21,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     color: Color(0xFFECF9FF)),
// //                 height: 114,
// //                 width: double.infinity,
// //                 child: Stack(children: [
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                           margin: EdgeInsets.only(left: 14, right: 14),
// //                           decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(16)),
// //                           height: 71,
// //                           width: 62,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(16),
// //                             child: Image.asset(
// //                               "assets/images/antiVirus.jpg",
// //                               fit: BoxFit.cover,
// //                             ),
// //                           )),
// //                       const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "Anti Virus Installation",
// //                             style: TextStyle(
// //                                 fontSize: 17.81, fontWeight: FontWeight.w700),
// //                           ),
// //                           Text(
// //                             "Lorem ipsum dolor sit amet, consecter ",
// //                             style: TextStyle(
// //                               fontSize: 11.52,
// //                             ),
// //                           ),
// //                           Text(
// //                             "Abc Service Provider ",
// //                             style: TextStyle(fontSize: 11.52, height: 0.8),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rate,
// //                                 size: 15,
// //                               ),
// //                               const SizedBox(width: 5),
// //                               Text(
// //                                 "4.3",
// //                                 style: TextStyle(fontSize: 11.52),
// //                               )
// //                             ],
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Align(
// //                     alignment: Alignment.topRight,
// //                     child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.favorite_border_rounded,
// //                           size: 25,
// //                           color: Colors.redAccent,
// //                         )),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         IconButton(
// //                             onPressed: () {},
// //                             icon: Icon(
// //                               Icons.trolley,
// //                               size: 25,
// //                             )),
// //                         Text("INR 5,999 "),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 ]),
// //               ),
        
        
// //                   const SizedBox(
// //                 height: 21,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     color: Color(0xFFECF9FF)),
// //                 height: 114,
// //                 width: double.infinity,
// //                 child: Stack(children: [
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                           margin: EdgeInsets.only(left: 14, right: 14),
// //                           decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(16)),
// //                           height: 71,
// //                           width: 62,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(16),
// //                             child: Image.asset(
// //                               "assets/images/antiVirus.jpg",
// //                               fit: BoxFit.cover,
// //                             ),
// //                           )),
// //                       const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "Anti Virus Installation",
// //                             style: TextStyle(
// //                                 fontSize: 17.81, fontWeight: FontWeight.w700),
// //                           ),
// //                           Text(
// //                             "Lorem ipsum dolor sit amet, consecter ",
// //                             style: TextStyle(
// //                               fontSize: 11.52,
// //                             ),
// //                           ),
// //                           Text(
// //                             "Abc Service Provider ",
// //                             style: TextStyle(fontSize: 11.52, height: 0.8),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rate,
// //                                 size: 15,
// //                               ),
// //                               const SizedBox(width: 5),
// //                               Text(
// //                                 "4.3",
// //                                 style: TextStyle(fontSize: 11.52),
// //                               )
// //                             ],
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Align(
// //                     alignment: Alignment.topRight,
// //                     child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.favorite_border_rounded,
// //                           size: 25,
// //                           color: Colors.redAccent,
// //                         )),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         IconButton(
// //                             onPressed: () {},
// //                             icon: Icon(
// //                               Icons.trolley,
// //                               size: 25,
// //                             )),
// //                         Text("INR 5,999 "),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 ]),
// //               ),
        
        
// //                   const SizedBox(
// //                 height: 21,
// //               ),
// //               Container(
// //                 decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(25),
// //                     color: Color(0xFFECF9FF)),
// //                 height: 114,
// //                 width: double.infinity,
// //                 child: Stack(children: [
// //                   Row(
// //                     crossAxisAlignment: CrossAxisAlignment.center,
// //                     children: [
// //                       Container(
// //                           margin: EdgeInsets.only(left: 14, right: 14),
// //                           decoration: BoxDecoration(
// //                               borderRadius: BorderRadius.circular(16)),
// //                           height: 71,
// //                           width: 62,
// //                           child: ClipRRect(
// //                             borderRadius: BorderRadius.circular(16),
// //                             child: Image.asset(
// //                               "assets/images/antiVirus.jpg",
// //                               fit: BoxFit.cover,
// //                             ),
// //                           )),
// //                       const Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             "Anti Virus Installation",
// //                             style: TextStyle(
// //                                 fontSize: 17.81, fontWeight: FontWeight.w700),
// //                           ),
// //                           Text(
// //                             "Lorem ipsum dolor sit amet, consecter ",
// //                             style: TextStyle(
// //                               fontSize: 11.52,
// //                             ),
// //                           ),
// //                           Text(
// //                             "Abc Service Provider ",
// //                             style: TextStyle(fontSize: 11.52, height: 0.8),
// //                           ),
// //                           Row(
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rate,
// //                                 size: 15,
// //                               ),
// //                               const SizedBox(width: 5),
// //                               Text(
// //                                 "4.3",
// //                                 style: TextStyle(fontSize: 11.52),
// //                               )
// //                             ],
// //                           )
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                   Align(
// //                     alignment: Alignment.topRight,
// //                     child: IconButton(
// //                         onPressed: () {},
// //                         icon: Icon(
// //                           Icons.favorite_border_rounded,
// //                           size: 25,
// //                           color: Colors.redAccent,
// //                         )),
// //                   ),
// //                   Align(
// //                     alignment: Alignment.bottomRight,
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         IconButton(
// //                             onPressed: () {},
// //                             icon: Icon(
// //                               Icons.trolley,
// //                               size: 25,
// //                             )),
// //                         Text("INR 5,999 "),
// //                         const SizedBox(
// //                           width: 10,
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 ]),
// //               ),
          
          
// //             ],
// //           ),
// //         ),
// //       ),
      
// //     );
// //   }
// // }

