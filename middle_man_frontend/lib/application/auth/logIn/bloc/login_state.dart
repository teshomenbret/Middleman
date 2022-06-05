// part of 'login_bloc.dart';

// @freezed
// class LoginState with _$LoginState {
//    const factory LoginState({
//      required Auth auth,
//     required EmailAddress emailAddress,
//     required Password password,
//     required bool showErrorMessages,
//     required bool isSubmitting,
//     required String error,
//     required Option<Either<AuthFailure, String>> authFailureOrSuccessOption,
//   }) = _LoginState;

//   factory LoginState.initial() => LoginState(
//         emailAddress: EmailAddress(''),
//         password: Password(''),
//         showErrorMessages: false,
//         isSubmitting: false,
//         authFailureOrSuccessOption: none(),
//         auth: Auth(userName: Name(""), password: Password("")),
//         error: '',
//       );

//   map({required Stream Function(dynamic e) emailChanged, required Stream Function(dynamic e) passwordChanged, required Stream Function(dynamic e) logInPressed}) {}

// }

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/auth/user.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.success(User user, String token) = LoginStateSuccess;
  const factory LoginState.failure(Error error) = LoginStateFailure;
}
