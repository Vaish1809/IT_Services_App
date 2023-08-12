import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Cart.dart';
import 'package:orinova_it_servicesapp/Screens/MainHomePage.dart';
import 'package:orinova_it_servicesapp/Screens/Profile.dart';
import 'package:orinova_it_servicesapp/Screens/Search.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//enum _SelectedTab { home, favorite, search, person }
import 'package:icons_plus/icons_plus.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;

  // var _selectedTab = _SelectedTab.home;

  // void _handleIndexChanged(int i) {
  //   setState(() {
  //     _selectedTab = _SelectedTab.values[i];
  //   });
  // }

  final screens = [
   MainHomePage(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  // void _onTabTapped(int index) {
  //   setState(() {
  //     _index = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      // bottomNavigationBar: 
      // Container(
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         blurRadius: 20,
      //         color: Color(0xFF303841).withOpacity(.1),
      //       )
      //     ],
      //   ),
      //   child: DotNavigationBar(
      //      // margin: EdgeInsets.only(left: 10, right: 10),
      //     currentIndex: _index,
      //         dotIndicatorColor: Colors.white,
      //         unselectedItemColor: Colors.grey[300],
      //         splashBorderRadius: 50,
      //         // enableFloatingNavBar: false,
      //         onTap: (index) {
      //             setState(() {
      //               _index = index;
      //             });
      //         } ,
      //       items: [
      //       DotNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         selectedColor: Color(0xff73544C),
        
      //       ),
        
      //       /// Likes
      //       DotNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         selectedColor: Color(0xff73544C),
      //       ),
        
      //       /// Search
      //       DotNavigationBarItem(
             
      //         icon: Icon(Icons.search),
      //         selectedColor: Color(0xff73544C),
      //       ),
        
      //       /// Profile
      //       DotNavigationBarItem(
              
      //         icon: Icon(Icons.person),
      //         selectedColor: Color(0xff73544C),
      //       ),
      //     ])
      // )
      // body:screens[_index],
bottomNavigationBar: Container(
  height: 70,
  padding: EdgeInsets.only(left: 20,right:20 ),
        decoration: BoxDecoration(
          color: Color(0x33DBDBDB),
          borderRadius: BorderRadius.circular(30),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 20,
          //     color: Color(0xFF303841).withOpacity(.1),
          //   )
          // ],
        ),
        child: SafeArea(
          // child:
          //  Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical:15 ),
            child: GNav(
          
              rippleColor: Colors.white,
              hoverColor: Colors.white,
              gap: 4,
              activeColor: Color(0xFF32B4EF),
              iconSize: 30,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.white,

              
               color: Color(0x4D303841,),
              tabs: [
                GButton(
                  icon:Icons.home_rounded ,
              //    text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
               //   text: 'Likes',
                ),
                GButton(
                  icon: Icons.shopping_cart,
               //   text: 'Search',
                ),
                GButton(
                  icon: Icons.person_sharp,
               //   text: 'Profile',
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
              },
            ),
          //),
        ),
      ),
      //  bottomNavigationBar: ClipRRect(
      //     borderRadius: BorderRadius.vertical(
      //       top: Radius.circular(32),
      //     ),
      //     child: BottomAppBar(

      //       color: Color.fromARGB(0, 219, 219, 219),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           IconButton(
      //             icon: Icon(
      //               Icons.home,
      //               color: Color(0xFF303841),
      //               size: 34,
      //             ),
      //             onPressed: () => _onTabTapped(0),
      //           ),
      //           IconButton(
      //             icon: Icon(
      //               Icons.search,
      //               color: Color(0xFF303841),
      //               size: 34,
      //             ),
      //             onPressed: () => _onTabTapped(1),
      //           ),
      //           // Empty SizedBox to create space for the floating action button
      //           IconButton(
      //             icon: Icon(
      //               Icons.trolley,
      //               color: Color(0xFF303841),
      //               size: 34,
      //             ),
      //             onPressed: () => _onTabTapped(2),
      //           ),
      //           IconButton(
      //             icon: Icon(
      //               Icons.person_sharp,
      //               color: Color(0xFF303841),
      //               size: 34,
      //             ),
      //             onPressed: () => _onTabTapped(3),
      //           ),
      //         ],
      //       ),
      //     ),
      //   )
    );
  }
}
