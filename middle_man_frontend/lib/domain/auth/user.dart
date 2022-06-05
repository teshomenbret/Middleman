import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:middle_man_frontend/domain/auth/value_objects.dart';

import '../company/value_objects.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User{
  const User._();
  const factory User({
    required UniqueId id,
    required Name userame,
    required Name firstName,
    required Name lastName,
    required Password password,
    required EmailAddress email,
    required Role roles, 
    //  required Role role,
  }) = _User;

  Option<ValueFailure<dynamic>> get failureOption {
    return userame.failureOrUnit
        .andThen(firstName.failureOrUnit)
        .andThen(lastName.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(password.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

@freezed
abstract class Auth with _$Auth{
  const Auth._();

  const factory Auth({
    required Name username,
    required Password password,
  }) =_Auth;

   Option<ValueFailure<dynamic>> get failureOption {
     return username.failureOrUnit
            .andThen(password.failureOrUnit)
            .fold((f) => some(f), (_) => none());
   }
}