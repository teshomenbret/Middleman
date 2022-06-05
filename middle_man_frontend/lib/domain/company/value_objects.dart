import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';


class CompanyName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 50;

  factory CompanyName(String input) {
    return CompanyName._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const CompanyName._(this.value);
}


class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 1000;

  factory Description(String input) {
    return Description._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const Description._(this.value);
}

class Logo extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 10;

  factory Logo(String input) {
    return Logo._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const Logo._(this.value);
}

class AddressName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 50;

  factory AddressName(String input) {
    return AddressName._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const AddressName._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 15;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const PhoneNumber._(this.value);
}

class Region extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 50;

  factory Region(String input) {
    return Region._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const Region._(this.value);
}

class RegionList extends ValueObject<String> {

  static const List<String> possibleRegions = [
      "Afar", "Amhara", "Benishangul_Gumuz",
      "Gambela", "Harari", "Oromia", "Sidama", 
      "Somalia", "Southern_Nations_Nationalities_Peoples", "Tigray",
  ];

  @override
  final Either<ValueFailure<String>, String> value;

  factory RegionList(String input) {
    return RegionList._(
      validateRegionList(input, possibleRegions)
    );
  }

  const RegionList._(this.value);
}

class City extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 30;

  factory City(String input) {
    return City._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const City._(this.value);
}

class StreetName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 40;

  factory StreetName(String input) {
    return StreetName._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const StreetName._(this.value);
}

class BranchName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maximumLength = 50;

  factory BranchName(String input) {
    return BranchName._(
      validateMaxStringLength(input, maximumLength).flatMap(validateStringNotEmpty),
    );
  }

  const BranchName._(this.value);
}

class AddressList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory AddressList(KtList<T> input) {
    return AddressList._(
      validateListNotEmpty(input),
    );
  }

  const AddressList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

}

class UtList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  factory UtList(KtList<T> input) {
    return UtList._(
      validateUtList(input),
    );
  }

  const UtList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

}
