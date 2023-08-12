import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      extendBodyBehindAppBar: false,
 
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Wishlist",
          style: TextStyle(fontSize: 24.24, color: Color(0xFF303841), fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        constraints: BoxConstraints.expand(),
       
        child: SingleChildScrollView(
scrollDirection: Axis.vertical,
          child: Column(
            children: [
             
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 21,
              ),
                
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
             
                   
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
                      
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 114,
                width: double.infinity,
                child: Stack(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 14, right: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          height: 71,
                          width: 62,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              "assets/images/antiVirus.jpg",
                              fit: BoxFit.cover,
                            ),
                          )),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Anti Virus Installation",
                            style: TextStyle(
                                fontSize: 17.81, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consecter ",
                            style: TextStyle( color: Color(0xFF303841),
                              fontSize: 11.52,
                            ),
                          ),
                          Text(
                            "Abc Service Provider ",
                            style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 0.8),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "4.3",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          size: 25,
                          color: Colors.redAccent,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.trolley,
                              size: 25,
                            )),
                        Text("INR 5,999 ",style: TextStyle( color: Color(0xFF303841)),),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ]),
              ),

             
                  const SizedBox(
                height: 21,
              ),
             
            ],
          ),
        ),
      ),
      
    );
  }
}
