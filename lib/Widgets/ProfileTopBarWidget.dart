
 import 'package:flutter/material.dart';

Widget ProfileTopBar(){
return 
Container(
                decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(150, 236, 249, 255,)),
                height: 86,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              // margin: EdgeInsets.only(left: 40),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)),
                              //  padding: EdgeInsets.only(top: 12,bottom: 12),
                              height: 60,
                              width: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  "assets/images/antiVirus.jpg",
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(
                            width: 27,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Vaishnavi Pdiya",
                                style: TextStyle( color: Color(0xFF303841),
                                    fontSize: 17.81,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "vbhfnid@gmial.com ",
                                style: TextStyle( color: Color(0xFF303841),fontSize: 11.52, height: 1),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            iconSize: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
}
 