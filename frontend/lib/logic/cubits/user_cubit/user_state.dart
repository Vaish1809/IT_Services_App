



import 'package:orinova_it_servicesapp/data/models/user_model.dart';

abstract class UserState{

}
class UserInitialState extends UserState{}

class UserLoadingState extends UserState{}

class UserLoggedInState extends UserState{
  final user_model userModel;
  UserLoggedInState(this.userModel);
}


class UserLoggedOutState extends UserState{}

class UserErrorState extends UserState{

  final String message;
  UserErrorState(this.message);
}