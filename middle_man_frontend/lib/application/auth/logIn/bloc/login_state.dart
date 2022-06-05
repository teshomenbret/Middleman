 

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
