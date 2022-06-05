

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/auth/i_auth_repository.dart';
import '../../../../infrastructure/repositories/auth/auth_repository.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginState.initial()) {
    on<LoginEventPressed>(((event, emit) async {
      emit(const LoginStateLoading());
    }));
    on<LoginEventLogin>(((event, emit) async {
      emit(const LoginStateLoading());
      var result = await _authRepository.logIn(auth: event.auth);
       print(result);
    }));
    on<LoginEventRegister>(((event, emit) async {
      emit(const LoginStateLoading());
      var result = await _authRepository.registerAs(user: event.user);
      print(result);

      
    }));
  }
}
