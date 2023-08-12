import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Cart.dart';
import 'package:orinova_it_servicesapp/Screens/MainHomePage.dart';
import 'package:orinova_it_servicesapp/Screens/Profile.dart';
import 'package:orinova_it_servicesapp/Screens/Search.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

//enum _SelectedTab { home, favorite, search, person }

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
  void _onTabTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: screens[_index],
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(bottom: 10), 
      //   child: DotNavigationBar(
      //     margin: EdgeInsets.only(left: 10, right: 10),
      //   currentIndex: _index,
      //       dotIndicatorColor: Colors.white,
      //       unselectedItemColor: Colors.grey[300],
      //       splashBorderRadius: 50,
      //       // enableFloatingNavBar: false,
      //       onTap: _onTabTapped,  
      //     items: [
      //     DotNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       selectedColor: Color(0xff73544C),
      
      //     ),
      
      //     /// Likes
      //     DotNavigationBarItem(
      //       icon: Icon(Icons.favorite),
      //       selectedColor: Color(0xff73544C),
      //     ),
      
      //     /// Search
      //     DotNavigationBarItem(
           
      //       icon: Icon(Icons.search),
      //       selectedColor: Color(0xff73544C),
      //     ),
      
      //     /// Profile
      //     DotNavigationBarItem(
            
      //       icon: Icon(Icons.person),
      //       selectedColor: Color(0xff73544C),
      //     ),
      //   ]),
      // ),
      body:screens[_index],
       bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
          child: BottomAppBar(

            color: Color.fromARGB(0, 219, 219, 219),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 34,
                  ),
                  onPressed: () => _onTabTapped(0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 34,
                  ),
                  onPressed: () => _onTabTapped(1),
                ),
                // Empty SizedBox to create space for the floating action button
                IconButton(
                  icon: Icon(
                    Icons.trolley,
                    color: Colors.black,
                    size: 34,
                  ),
                  onPressed: () => _onTabTapped(2),
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_sharp,
                    color: Colors.black,
                    size: 34,
                  ),
                  onPressed: () => _onTabTapped(3),
                ),
              ],
            ),
          ),
        )
    );
  }
}
