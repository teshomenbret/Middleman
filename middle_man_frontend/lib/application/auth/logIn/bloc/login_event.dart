 
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:middle_man_frontend/domain/auth/user.dart';
 

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const LoginEvent._();
  const factory LoginEvent.onPresed() = LoginEventPressed;
  const factory LoginEvent.login(Auth auth) = LoginEventLogin;
  const factory LoginEvent.register(User user) =
      LoginEventRegister;
}