import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 60, left: 25, right: 25),
            child: Row(
              children: [
                Icon(
                  Icons.logo_dev,
                  size: 40,
                ),
                Spacer(),
                Icon(
                  Icons.favorite_outline_sharp,
                  size: 35,
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  size: 37,
                ),
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
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: 1000,
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
            color: Color(0xFFECF9FF),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "350",
                      style: TextStyle(
                          fontSize: 22.14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "projects done",
                      style: TextStyle(fontSize: 11.52),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "350",
                      style: TextStyle(
                          fontSize: 22.14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ongoing projects",
                      style: TextStyle(fontSize: 11.52),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "350",
                      style: TextStyle(
                          fontSize: 22.14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "projects done",
                      style: TextStyle(fontSize: 11.52),
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
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Top Stacks",
                  style:
                      TextStyle(fontSize: 22.14, fontWeight: FontWeight.bold),
                )),
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
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Our Services",
                  style:
                      TextStyle(fontSize: 22.14, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
        height: 107,
        child: Stack(
          children: [
          Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color:Color.fromARGB(200, 219, 219, 219),),
            height: 66,
            width: 180,       
     ),
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Android.png",fit: BoxFit.contain,),
        Text("Android App",style: TextStyle(fontSize: 17.81),)
      ],
     )

        ]
             
      ),
          )
        ]
      )
    );
  }
}


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
