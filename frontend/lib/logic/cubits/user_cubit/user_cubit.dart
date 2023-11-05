import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orinova_it_servicesapp/data/models/user_model.dart';
import 'package:orinova_it_servicesapp/data/repositories/user_repository.dart';
import 'package:orinova_it_servicesapp/logic/cubits/user_cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitialState());
  final UserRepository _userRepository = UserRepository();

  void signIn({
    required String email,
    required String password,
  }) async {
    emit(UserLoadingState());
    try {
      user_model userModel =
          await _userRepository.signIn(email: email, password: password);
      emit(UserLoggedInState(userModel));
    } catch (err) {
      emit(UserErrorState(err.toString()));
    }
  }

    void createAccount({
    required String email,
    required String password,
  }) async {
    emit(UserLoadingState());
    try {
      user_model userModel =
          await _userRepository.createAccount(email: email, password: password);
      emit(UserLoggedInState(userModel));
    } catch (err) {
      emit(UserErrorState(err.toString()));
    }
  }
}
//class UserCubit extends Cubit<UserState> {
//   UserCubit() : super(UserInitialState());
//   final UserRepository _userRepository = UserRepository();

//   void signIn({
//     required String email,
//     required String password,
//   }) async {
//     if (!isClosed) {
//       emit(UserLoadingState());
//     }

//     try {
//       user_model userModel = await _userRepository.signIn(email: email, password: password);

//       if (!isClosed) {
//         emit(UserLoggedInState(userModel));
//       }
//     } catch (err) {
//       if (!isClosed) {
//         emit(UserErrorState(err.toString()));
//       }
//     }
//   }

//   void createAccount({
//     required String email,
//     required String password,
//   }) async {
//     if (!isClosed) {
//       emit(UserLoadingState());
//     }

//     try {
//       user_model userModel = await _userRepository.createAccount(email: email, password: password);

//       if (!isClosed) {
//         emit(UserLoggedInState(userModel));
//       }
//     } catch (err) {
//       if (!isClosed) {
//         emit(UserErrorState(err.toString()));
//       }
//     }
//   }
// }