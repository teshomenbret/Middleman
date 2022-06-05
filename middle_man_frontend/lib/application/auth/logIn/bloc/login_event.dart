// part of 'login_bloc.dart';







// @freezed
// class LoginEvent with _$LoginEvent {

//   const factory LoginEvent.userNameChanged(String emailStr) = UserNameChanged;
//   const factory LoginEvent.passwordChanged(String passwordStr) =PasswordChanged;
//   const factory LoginEvent.logInPressed() =LogInPressed;

// }
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/auth/user.dart';
 

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const LoginEvent._();
  const factory LoginEvent.onPresed() = LoginEventPressed;
  const factory LoginEvent.login(Auth auth) = LoginEventLogin;
  const factory LoginEvent.register(User user) =
      LoginEventRegister;
}