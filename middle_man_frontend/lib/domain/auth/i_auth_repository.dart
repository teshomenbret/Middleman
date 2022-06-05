import 'package:dartz/dartz.dart';
import 'package:middle_man_frontend/domain/auth/user.dart';

import 'auth_failure.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, User>> registerAs({
    required User user,
  });
  Future<Either<AuthFailure, String>> logIn({
    required Auth auth,
  });
}
