import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maximumLength,
) {
  if (input.length <= maximumLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      maximum: maximumLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateItemType(String input, List<String> types) {
  if (types.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidItemType(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateRole(String input, List<String> types) {
  if (types.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidItemType(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateItemQuantityAndPrice(input) {

    return right(input); 
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateListNotEmpty<T>(KtList<T> input){
  if (input.isNotEmpty()) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

// TODO add if you beleve
Either<ValueFailure<KtList<T>>, KtList<T>> validateUtList<T>(KtList<T> input){
    return right(input);
}


Either<ValueFailure<String>, String> validateRegionList(String input, List<String> possibleRegions) {
  if (possibleRegions.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidRegionType(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input, int minLength) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {

  const emailRegex =
      r"""(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|
      "(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\
      x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*
      [a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]
      |[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1
      f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}