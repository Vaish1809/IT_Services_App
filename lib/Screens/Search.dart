import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Cart.dart';
import 'package:orinova_it_servicesapp/Screens/MainHomePage.dart';
import 'package:orinova_it_servicesapp/Screens/selected%20categories.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();


    

    return Scaffold(
        extendBodyBehindAppBar: false,
        //backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Search",
            style: TextStyle(fontSize: 24.24, fontWeight: FontWeight.w700, color: Color(0xFF303841)),
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(25),
         // constraints: BoxConstraints.expand(),
          // padding: const EdgeInsets.all(22),
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
                      fontSize: 16, color: Color(0xFF303841)
                    ),
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Search ",
                      border: InputBorder.none,
                      labelStyle: const TextStyle(fontSize: 16, color: Color(0xFF303841)),
                      prefixIcon: Icon(Icons.search, color: Color(0xFF303841)),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          controller.clear();
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Our Services",
                      style:
                          TextStyle(fontSize: 22.14,  color: Color(0xFF303841),fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 21,
                ),
                // Expanded(
                //     child: GridView.builder(
                //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //             crossAxisCount: 2, // Two columns in the grid
                //             crossAxisSpacing: 20,
                //             mainAxisSpacing: 23,
                //             childAspectRatio: 2.0),
                //         itemCount:
                //             15, // Replace with the total number of rectangles you want
                //         itemBuilder: (context, index) {
                //           return SizedBox(
                //             height: 77,
                          
                          Wrap(
                spacing: 20,
                  runSpacing: 20,
                  children: List.generate(
                    18, // Replace with your desired count
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
                                    width: 170,
                                    height: 77,            
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color.fromARGB(150, 236, 249, 255,),
                                  ),
                                  // Replace with your desired color
                                  child: Center(
                                    child: Text(
                                      "Android Development",
                                      style: TextStyle(
                                        color: Color(0xFF303841),
                                        fontSize: 15.81,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                                           ),
                               ),
                    )
                  )
                        //                     ),
                        //   );
                        // }))
              ],
            ),
          ),
        ),
       );
  }
}

                //         )
                        //   child: GestureDetector(
                        //     onTap: (){
                        //          Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => SelectedCategoriesList(),
                        //   ),
                        // );
                        //     },

                //                   Wrap(
                // spacing: 20,
                // runSpacing: 20,
                // children:
                //              List.generate(
                //               10,
                            //    child: Container(
                                              
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(8),
                            //       color: Color.fromARGB(150, 236, 249, 255,),
                            //     ),
                            //     // Replace with your desired color
                            //     child: Center(
                            //       child: Text(
                            //         "Android Development",
                            //         style: TextStyle(
                            //           color: Color(0xFF303841),
                            //           fontSize: 15.81,
                            //         ),
                            //         textAlign: TextAlign.center,
                            //       ),
                            //     ),
                            //                              ),
                            //  ),
