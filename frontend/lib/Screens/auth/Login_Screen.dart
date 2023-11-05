import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orinova_it_servicesapp/Screens/auth/SignUp_screen.dart';
import 'package:orinova_it_servicesapp/Screens/auth/provider/login_provider.dart';
import 'package:orinova_it_servicesapp/Screens/tabs.dart';
import 'package:orinova_it_servicesapp/Widgets/CupertinoButton.dart';
import 'package:orinova_it_servicesapp/Widgets/TextFormField.dart';
import 'package:orinova_it_servicesapp/Widgets/Textbutton.dart';
import 'package:orinova_it_servicesapp/logic/cubits/user_cubit/user_cubit.dart';
import 'package:orinova_it_servicesapp/logic/cubits/user_cubit/user_state.dart';

import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context, listen: true);

    return BlocListener<UserCubit,UserState>(
       listener: (context, state) {
         if(state is UserLoggedInState)
         {
          // Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacementNamed(context, TabsScreen.routeName);
         }
       },
      child: Scaffold(
          body: SafeArea(
        child: Form(
          key: provider.formKey,
          child: ListView(
            padding: const EdgeInsets.only(top: 100, left: 25, right: 25),
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 24.24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF303841)),
              ),
              const SizedBox(
                height: 16,
              ),
              (provider.error != "")
                  ? Text(provider.error,
                      style: TextStyle(color: Colors.red, fontSize: 16))
                  : const SizedBox(),
              const SizedBox(
                height: 16,
              ),
              TextBox(
                validator: (value) {
                  if(value == null || value.trim().isEmpty){
                    return"Email address required";
                  }
                  if(!EmailValidator.validate(value.trim())){
                    return "Invalid Email Address";
                  }
                  return null;
                },
                labelText: "Email",
                controller: provider.emailController,
              ),
              const SizedBox(
                height: 16,
              ),
              TextBox(
                 validator: (value) {
                  if(value == null || value.trim().isEmpty){
                    return"Password is required";
                  }
                 
                  return null;
                },
                labelText: "Password",
                controller: provider.passwordController,
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Textbutton(
                    text: "Forgot Password?",
                    onPressed: () {},
                    fontsize: 12,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Cupertinobutton(
                  text: (provider.isLoading) ? "..." : "Login",
                  onPressed: provider.logIn),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16, color: Color(0xFF303841)),
                  ),
                  const SizedBox(
                    height: 16,
                    width: 5,
                  ),
                  Textbutton(
                    text: "SignUp",
                    onPressed: () {Navigator.pushNamed(context, SignUpScreen.routeName);},
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
