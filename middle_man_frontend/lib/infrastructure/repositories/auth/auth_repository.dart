import 'dart:convert';

import 'package:http/http.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_repository.dart';
import '../../../domain/auth/user.dart';
import '../../data_provider/auth/auth_data_rovider.dart';
import '../../data_transfer_objects/auth/user_dto.dart';

class AuthRepository implements IAuthRepository{
  final AuthDataProvider authDataProvider;
  AuthRepository(this.authDataProvider);

  @override
  Future<Either<AuthFailure, User>> registerAs({required User user}) async {
    try{
      final userDto = UserDto.fromDomain(user);
      print(userDto);
      String body = await authDataProvider.register(userDto.toJson());
      Map<String, dynamic> dotoJoson = jsonDecode(body);
      UserDto userDtoNew = UserDto.fromJson(dotoJoson);
      User userCreated = userDtoNew.toDomain();  
      return right(userCreated);

    }on Exception {
      return left(const AuthFailure.serverError());
    } 
  }

  @override
  Future<Either<AuthFailure, String>> logIn({required Auth auth}) async {
   try{
      final authDto = AuthDto.fromDomain(auth);
      Response body = await authDataProvider.login(auth);
      // Map<String, dynamic> dotoJoson = jsonDecode(body); 
      return right(body.body);
    }on Exception {
      return left(const AuthFailure.serverError());
    } 
 
  }
}