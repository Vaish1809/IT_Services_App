import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orinova_it_servicesapp/logic/cubits/user_cubit/user_cubit.dart';
import 'package:orinova_it_servicesapp/logic/cubits/user_cubit/user_state.dart';

class LoginProvider with ChangeNotifier {
  final BuildContext context;
  LoginProvider(this.context){
    _listenToUserCubit();
  }
  bool isLoading = false;
  String error = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>(); //a unique key for validation
  
  StreamSubscription? _userSubscription;
  
  void _listenToUserCubit() {
 print("Listeneing to user state");
   _userSubscription=  BlocProvider.of<UserCubit>(context).stream.listen((UserState) {
      if (UserState is UserLoadingState) {
        isLoading = true;
        error = "";
        notifyListeners();
      } else if (UserState is UserErrorState) {
        isLoading = false;
        error = UserState.message;
        notifyListeners();
      } else {
        isLoading = false;
        error = "";
        notifyListeners();
      }
    });
  }

  void logIn() async {
    if(!formKey.currentState!.validate()) return;
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    BlocProvider.of<UserCubit>(context)
        .signIn(email: email, password: password);
  }
  @override
  void dispose() {
   _userSubscription?.cancel();
    super.dispose();
  }
}
