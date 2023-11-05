import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:orinova_it_servicesapp/Screens/auth/Login_Screen.dart';
import 'package:orinova_it_servicesapp/Screens/auth/provider/signup_provider.dart';
import 'package:orinova_it_servicesapp/Widgets/CupertinoButton.dart';
import 'package:orinova_it_servicesapp/Widgets/TextFormField.dart';
import 'package:orinova_it_servicesapp/Widgets/Textbutton.dart';
import 'package:provider/provider.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
 static const String routeName = "signup";
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
 
  Widget build(BuildContext context) {
     final provider = Provider.of<SignUpProvider>(context, listen: true);
   return Scaffold(
        body: SafeArea(
      child: Form(
        key: provider.formKey,
        child: ListView(
          padding: const EdgeInsets.only(top: 100, left: 25, right: 25),
          children: [
            const Text(
              "SignUp",
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
             const SizedBox(
              height: 16,
            ),
            TextBox(
               validator: (value) {
                if(value == null || value.trim().isEmpty){
                  return"Confirm your password";
                }
        if(value.trim() != provider.passwordController.text.trim()){
          return"Passwords do not match"; 
        }
                return null;
              },
              labelText: "Confirm Password",
              controller: provider.cPasswordController,
              obscureText: true,
            ),
           
            const SizedBox(
              height: 16,
            ),
            Cupertinobutton(
                text: (provider.isLoading) ? "..." : "Create Account",
                onPressed: provider.createAccount),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16, color: Color(0xFF303841)),
                ),
                const SizedBox(
                  height: 16,
                  width: 5,
                ),
                Textbutton(
                  text: "Login",
              onPressed: () {Navigator.pushNamed(context, LoginScreen.routeName);},
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}