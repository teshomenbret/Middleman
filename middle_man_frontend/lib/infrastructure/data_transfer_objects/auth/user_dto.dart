import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
 

import '../../../domain/auth/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/value_objects.dart';

part 'user_dto.g.dart';
part 'user_dto.freezed.dart';
@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();
  
  factory UserDto({
    required  String id,
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String roles, 
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      username: user.userame.getOrCrash(),
      firstName: user.firstName.getOrCrash(), 
      lastName: user.lastName.getOrCrash(),
      email: user.email.getOrCrash(),
      roles: user.roles.getOrCrash(), 
      password: user.password.getOrCrash()
    );
  }


  factory UserDto.fromJson(Map<String, dynamic> json) =>_$UserDtoFromJson(json);

  User toDomain(){
    return User(
      id: UniqueId.fromUniqueString(id),
      userame:Name(username), 
      firstName:Name(firstName),
      lastName:Name(lastName),
      password: Password(password), 
      email:EmailAddress(email),
      roles: Role(roles), 
      );
  }

}

@freezed
abstract class AuthDto with _$AuthDto {
  const AuthDto._();

  factory AuthDto({
    required String userName,
     required String passWord,
  }) = _AuthDto;

  factory AuthDto.fromDomain(Auth auth) {
    return AuthDto(
      userName: auth.username.getOrCrash(),
      passWord: auth.password.getOrCrash(), 
    );
  }

  factory AuthDto.fromJson(Map<String, dynamic> json) =>_$AuthDtoFromJson(json);
  Auth toDomain(){
    return Auth(
      username:Name(userName), 
      password: Password(passWord),
      );
  }

}