import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(errorMessage: 'user-not-found'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(errorMessage: 'wrong-password'));
      }
    } catch (e) {
      emit(LoginFailure(errorMessage: 'there was an error , please try again.'));
    }
  }
}


//                       isLoading = true;
//                       try {
//                         await loginUser();
//                         Navigator.pushNamed(
//                           context,
//                           ChatScreen.id,
//                           arguments: email,
//                         );
//                       } on FirebaseAuthException catch (e) {
//                         if (e.code == 'user-not-found') {
//                           showSnackBar(
//                               context, 'No user found for that email.');
//                         } else if (e.code == 'wrong-password') {
//                           showSnackBar(context,
//                               'Wrong password provided for that user.');
//                         }
//                       } catch (e) {
//                         showSnackBar(
//                             context, 'there was an error , please try again');
//                         print(e.toString());
//                       }
//                       isLoading = false;