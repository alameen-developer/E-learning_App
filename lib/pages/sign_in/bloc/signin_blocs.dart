import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ilearningapp/pages/sign_in/bloc/signin_events.dart';
import 'package:ilearningapp/pages/sign_in/bloc/signin_states.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const SignInState()) {
    on<EmailEvent>(_emailEvent);
    on<PasswordEvent>(_passwordEvent);
  }
  //handler body
  void _emailEvent(EmailEvent event, Emitter<SignInState> emit) {
    print("My email is ${event.email}");
    emit(state.copyWith(email: event.email));
  }
  void _passwordEvent(PasswordEvent event, Emitter<SignInState> emit) {
    print("My password is ${event.password}");
    emit(state.copyWith(email: event.password));
  }
}
