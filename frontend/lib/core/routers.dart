import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/auth/Login_Screen.dart';
import 'package:orinova_it_servicesapp/Screens/auth/SignUp_screen.dart';
import 'package:orinova_it_servicesapp/Screens/auth/provider/login_provider.dart';
import 'package:orinova_it_servicesapp/Screens/auth/provider/signup_provider.dart';
import 'package:orinova_it_servicesapp/Screens/errorNotFound.dart';
import 'package:orinova_it_servicesapp/Screens/tabs.dart';
import 'package:provider/provider.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return CupertinoPageRoute(
            builder: (context) => ChangeNotifierProvider(
                create: (context) => LoginProvider(context),
                child: const LoginScreen()));
      case SignUpScreen.routeName:
        return CupertinoPageRoute(
            builder: (context) => ChangeNotifierProvider(
                create: (context) => SignUpProvider(context),
                child: const SignUpScreen()));
      case TabsScreen.routeName:
      return CupertinoPageRoute(builder: (context) => TabsScreen(),);
      default:
        return CupertinoPageRoute(builder: (context) => const errorNotFound());
    }
  }
}
