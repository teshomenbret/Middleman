// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// import '../../../../domain/auth/auth_failure.dart';
// import '../../../../domain/auth/i_auth_repository.dart';
// import '../../../../domain/auth/user.dart';
// import '../../../../domain/auth/value_objects.dart';

// part 'login_event.dart';
// part 'login_state.dart';
// part 'login_bloc.freezed.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//    final IAuthRepository _authRepository;

//   LoginBloc(this._authRepository) : super(LoginState.initial());

//   // @override
//   // LoginState get initialState => LoginState.initial();

//   Stream<LoginState> mapEventToState(
//     LoginState event,
//   ) async* {
//     yield* event.map(
//       emailChanged: (e) async* {
//         yield state.copyWith(
//           emailAddress: EmailAddress(e.emailStr),
//           authFailureOrSuccessOption: none(),
//         );
//       },
//       passwordChanged: (e) async* {

//         yield state.copyWith(
//           password: Password(e.passwordStr),
//           authFailureOrSuccessOption: none(),
//         );
//       },
//       logInPressed: (e) async* {
//       Either<AuthFailure, String> failureOrSuccess = none() as Either<AuthFailure, String>;
//        yield state.copyWith(
//           isSubmitting: true,
//           authFailureOrSuccessOption: none(),
//         );

//         if (state.auth.failureOption.isNone()) {

//               failureOrSuccess = await _authRepository.logIn(auth: state.auth);
//               print(optionOf(failureOrSuccess));
//               if(failureOrSuccess.isLeft()){
//                 yield state.copyWith(
//                   error:"some thing gone wronge"
//                 );
//               }
//         }
//          yield state.copyWith(
//           isSubmitting: false,
//           showErrorMessages: true,
//           authFailureOrSuccessOption: optionOf(failureOrSuccess),

//         );
//         if(failureOrSuccess.isLeft()){
//                 yield state.copyWith(
//                   error:"some thing gone wronge"
//                 );
//               }
//       },
//     );
//   }
// }

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

      // if (result.isLeft()) {
      //   emit(left(result));
      // } else {
      //   emit(right(result));
      // }
    }));
  }
}
