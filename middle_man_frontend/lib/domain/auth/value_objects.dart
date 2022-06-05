import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';


class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    return Name._(
      validateMaxStringLength(input, 20),
    );
  }

  const Name._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input, 5),
    );
  }

  const Password._(this.value);
}


class Role extends ValueObject<String> {
  static const List<String> roles = [
      "USER",
      "CAMPANY",
      "ADMIN",
  ];
  @override
  final Either<ValueFailure<String>, String> value;

  factory Role(String input) {
    return Role._(
      validateRole(input, roles)
    );
  }
  const Role._(this.value);
}
