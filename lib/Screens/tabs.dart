import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/Cart.dart';
import 'package:orinova_it_servicesapp/Screens/MainHomePage.dart';
import 'package:orinova_it_servicesapp/Screens/Profile.dart';
import 'package:orinova_it_servicesapp/Screens/Search.dart';
class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
   int _index = 0;
  final screens = [
    MainHomePage(),
    SearchScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
   void _onTabTapped(int index) {
      setState(() {
       _index = index;
      }
      );
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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