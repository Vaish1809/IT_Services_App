import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
 
    int _currentIndex = 0;

    void _onTabTapped(int index) {
      setState(() {
        _currentIndex = index;
      });
    }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      extendBodyBehindAppBar: false,
 
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        constraints: BoxConstraints.expand(),
       
        child: Stack(
          children:[ SingleChildScrollView(
        scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                children: [
                 
              
              
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFFECF9FF)),
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
                                    fontSize: 17.81, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consecter ",
                                style: TextStyle(
                                  fontSize: 11.52,
                                ),
                              ),
                              Text(
                                "Abc Service Provider ",
                                style: TextStyle(fontSize: 11.52, height: 0.8),
                              ),
const SizedBox(height: 3,),
                              Row(
                    
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    size: 12,color: Color(0xFFFFC23C),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "4.3",
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFC23C),fontWeight: FontWeight.w700)
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
                            Text("INR 5,999 "),
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
                        color: Color(0xFFECF9FF)),
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
                                    fontSize: 17.81, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consecter ",
                                style: TextStyle(
                                  fontSize: 11.52,
                                ),
                              ),
                              Text(
                                "Abc Service Provider ",
                                style: TextStyle(fontSize: 11.52, height: 0.8),
                              ),
                             const SizedBox(height: 3,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    size: 12,color: Color(0xFFFFC23C),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "4.3",
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFC23C),fontWeight: FontWeight.w700)
                                  )
                            ],
                              ),
                            ]
                          )
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
                            Text("INR 5,999 "),
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
                        color: Color(0xFFECF9FF)),
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
                                    fontSize: 17.81, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consecter ",
                                style: TextStyle(
                                  fontSize: 11.52,
                                ),
                              ),
                              Text(
                                "Abc Service Provider ",
                                style: TextStyle(fontSize: 11.52, height: 0.8),
                              ),
                              const SizedBox(height: 3,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    size: 12,color: Color(0xFFFFC23C),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "4.3",
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFC23C),fontWeight: FontWeight.w700)
                                  )
                            ],
                              ),
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
                            Text("INR 5,999 "),
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
                        color: Color(0xFFECF9FF)),
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
                                    fontSize: 17.81, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consecter ",
                                style: TextStyle(
                                  fontSize: 11.52,
                                ),
                              ),
                              Text(
                                "Abc Service Provider ",
                                style: TextStyle(fontSize: 11.52, height: 0.8),
                              ),
                             const SizedBox(height: 3,),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_rounded,
                                    size: 12,color: Color(0xFFFFC23C),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    "4.3",
                                    style: TextStyle(fontSize: 10,color: Color(0xFFFFC23C),fontWeight: FontWeight.w700)
                                  )
                            ],
                              ),
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
                            Text("INR 5,999 "),
                            const SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
              
              
                ],
              ),
            ),
          ),
        
          Positioned(left: 0,
          right: 0,
          bottom:0 ,
            child: Container(
              alignment: Alignment.bottomLeft,
              height: 101,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.black12)),
            ),
          )
          ]
        ),
      ),
      
       
           
          
        
    );
  }
}
