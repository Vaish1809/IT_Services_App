import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orinova_it_servicesapp/Screens/Cart.dart';
import 'package:orinova_it_servicesapp/Screens/MainHomePage.dart';
import 'package:orinova_it_servicesapp/Screens/Search.dart';
import 'package:orinova_it_servicesapp/Screens/Wishlist.dart';
import 'package:orinova_it_servicesapp/Screens/auth/Login_Screen.dart';
import 'package:orinova_it_servicesapp/Screens/auth/provider/login_provider.dart';
import 'package:orinova_it_servicesapp/Screens/selected%20categories.dart';
import 'package:orinova_it_servicesapp/Screens/tabs.dart';
import 'package:orinova_it_servicesapp/logic/cubits/user_cubit/user_cubit.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orinova_it_servicesapp/core/routers.dart';

final navigationProvider = StateProvider<int>((ref) => 0);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer= MyBlockObserver();
    //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> UserCubit()),
    // ChangeNotifierProvider(create: (context) => LoginProvider(context),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
        initialRoute: LoginScreen.routeName,
        title: 'Flutter Demo',
        theme: ThemeData(
         // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
          colorScheme: ColorScheme.fromSeed(seedColor:Color.fromARGB(255, 255, 255, 255)),
      useMaterial3: true,
      
        ),
        home: TabsScreen(),
        
      ),
    );
  }
}

class MyBlockObserver extends BlocObserver{
  @override
  void onCreate(BlocBase bloc) {
   print("Created: $bloc");
    super.onCreate(bloc);
  }
  @override
  void onChange(BlocBase bloc, Change change) {
   print("Change in $bloc: $change");
    super.onChange(bloc, change);
  }
  @override
  void onClose(BlocBase bloc) {
   print("Closed: $bloc");
    super.onClose(bloc);
  }
 

  @override
  void onEvent(Bloc bloc, Object? event) {
  print(" Event : $bloc , $event");
    super.onEvent(bloc, event);
  }
  @override
  void onTransition(Bloc bloc, Transition transition) {
   print("Transition : $bloc, $transition");
    super.onTransition(bloc, transition);
  }
}