import 'package:dartz/dartz.dart';
import 'package:middle_man_frontend/domain/company/company.dart';
import 'package:middle_man_frontend/domain/company/company_failure.dart';


abstract class ICompanyRepository {
  Future<Either<CompanyFailure, List<Company>>> read();
  Future<Either<CompanyFailure, Company>> create(Company company);
  Future<Either<CompanyFailure, Company>> update(Company company);
  Future<Either<CompanyFailure, Unit>> delete(Company company);
}