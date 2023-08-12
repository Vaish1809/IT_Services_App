import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orinova_it_servicesapp/Screens/Cart.dart';
import 'package:orinova_it_servicesapp/Screens/MainHomePage.dart';
import 'package:orinova_it_servicesapp/Screens/Search.dart';
import 'package:orinova_it_servicesapp/Screens/Wishlist.dart';
import 'package:orinova_it_servicesapp/Screens/selected%20categories.dart';
import 'package:orinova_it_servicesapp/Screens/tabs.dart';
import 'package:riverpod/riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final navigationProvider = StateProvider<int>((ref) => 0);
void main() {
  //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 255, 255, 255)),
    useMaterial3: true,
    
      ),
      home: TabsScreen(),
      
    );
  }
}

