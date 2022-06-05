import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:middle_man_frontend/domain/company/value_objects.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../item/item.dart';


part 'company.freezed.dart';

@freezed
abstract class Company implements _$Company{
  const Company._();

  const factory Company({
    required UniqueId id,
    required CompanyName name,
    required Description description,
    required Logo logo,
  }) = _Company;

  factory Company.empty() => Company(
        id: UniqueId(),
        description: Description(''),
        logo: Logo(''), 
        name: CompanyName(""), 
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return description.failureOrUnit
        .andThen(description.failureOrUnit)
        .andThen(logo.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}