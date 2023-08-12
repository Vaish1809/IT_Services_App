import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:orinova_it_servicesapp/Screens/Payment.dart';
import 'package:orinova_it_servicesapp/Screens/Wishlist.dart';
import 'package:orinova_it_servicesapp/Screens/notifications.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          icon: Icon(
            Icons.favorite_border_rounded,
            size: 30,
          ),
          onPressed: () {

                   Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistScreen(),)
                    );
                  
          },
          
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
        ),
        const SizedBox(
          width: 25,
        )
      ]),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   height: mediaQueryData.size.height * 0.04,
                  // ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(25),
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: Color(0x33DBDBDB),
                      ),
                      alignment: Alignment.center,
                      child: ClipRRect(
                          child: Image.asset(
                            "assets/images/antiVirus.jpg",
                          ),
                          borderRadius: BorderRadius.circular(27)),
                      //(height: mediaQueryData.size.height *0.35,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Virus Removal",
                        style: TextStyle(
                            fontSize: 22.14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF303841)),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(150, 236, 249, 255,),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.trolley,
                            color: Color(0xFF303841),
                            size: 30,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.redAccent,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        "Service Provider",
                        style: TextStyle(
                            fontSize: 17.81,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF303841)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: 15,
                        color: Color(0xFFFFC23C),
                      ),
                      SizedBox(width: 5),
                      Text("4.3",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFFFFC23C),
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF303841)),
                  ),
                  const ExpandableText(
                    "Our expert technicians will thoroughly scan your device, identify any viruses or malware, and safely remove them. We will also provide recommendations to prevent future infections.",
                    expandText: 'Show more',
                    collapseText: 'Show less',
                    maxLines: 3,
                    linkColor: Colors.blue,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF303841),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Text(
                    "Why choose us?",
                    style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF303841)),
                  ),
                  const ExpandableText(
                    "Our expert technicians will thoroughly scan your device, identify any viruses or malware, and safely remove them. We will also provide recommendations to prevent future infections.",
                    expandText: 'Show more',
                    collapseText: 'Show less',
                    maxLines: 3,
                    linkColor: Colors.blue,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF303841),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  const Text(
                    "Rating and Reviews",
                    style: TextStyle(
                        fontSize: 17.81,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF303841)),
                  ),
                  const Text(
                    "User 1",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF303841),
                      height: 1.5,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromARGB(75, 59, 59, 59)),
                    )),
                    child: const Row(
                      children: [
                        Text(
                          "Fantastic Service!",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF303841),
                            height: 1.5,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                          color: Color(0xFFFFC23C),
                        ),
                        SizedBox(width: 5),
                        Text("4.3",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFFFC23C),
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const Text(
                    "User 1",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF303841),
                      height: 1.5,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                          width: 1.0, color: Color.fromARGB(75, 59, 59, 59)),
                    )),
                    child: const Row(
                      children: [
                        Text(
                          "Fantastic Service!",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF303841),
                            height: 1.5,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.star_rounded,
                          size: 17,
                          color: Color(0xFFFFC23C),
                        ),
                        SizedBox(width: 5),
                        Text("4.3",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFFFC23C),
                                fontWeight: FontWeight.w700))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 100, // Adjust the height as needed
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(75, 59, 59, 59)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF303841)),
                        ),
                        // const SizedBox(height: 0.2,),
                        Row(
                          children: [
                            Text(" \u20B9",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF303841))),
                            Text(" 5,999",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF303841))),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 47,
                      width: 215,
                      child: FloatingActionButton(
                        onPressed: () {},
                        elevation: 0,
                        backgroundColor: Color.fromARGB(150, 236, 249, 255,),
                        child: TextButton(
                          child:const  Text(
                          "Checkout",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700,color: Color(0xFF303841)),  
                          ),
                          onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen(),));
                    },
                          
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
