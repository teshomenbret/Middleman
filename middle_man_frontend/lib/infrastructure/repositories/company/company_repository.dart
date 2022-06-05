import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../../domain/company/company.dart';
import '../../../domain/company/company_failure.dart';
import '../../../domain/company/i_company_repository.dart';
import '../../data_provider/company/company_remote_data_provider.dart';
import '../../data_transfer_objects/company/company_dto.dart';

class CompanyRepository implements ICompanyRepository{
  final ComanyRemoteDataProvider companyDataProvider;

    CompanyRepository(this.companyDataProvider);

   @override
  Future<Either<CompanyFailure, List<Company>>> read() async {
     print("sending");
    try{
      String apiResponse =await companyDataProvider.fetchAll();
      print("apiResponse");
      
      final List<dynamic> responseJson = jsonDecode(apiResponse);

      print(responseJson);
      final allCompanyList= responseJson.map(
        (e) => CompanyDto.fromJson(e).toDomain()).toList();
      return right(allCompanyList);
    }on Exception  {
      // print(e);
      return left(const CompanyFailure.unexpected());
    } 
  }

  @override
  Future<Either<CompanyFailure, Company>> create(Company company) async {
    try{
      final companyDto = CompanyDto.fromDomain(company);
      String body = await companyDataProvider.create(companyDto.toJson());
      Map<String, dynamic> dotoJoson = jsonDecode(body);
      CompanyDto companyDtoNew = CompanyDto.fromJson(dotoJoson);
      Company companyCreated = companyDtoNew.toDomain();  
      return right(companyCreated);

    }on Exception {
      return left(const CompanyFailure.unexpected());
    } 
  }

  @override
  Future<Either<CompanyFailure, Company>> update(Company company) async {
     try{
      final companyDto = CompanyDto.fromDomain(company);
      String body = await companyDataProvider.update(companyDto.toJson());
      Map<String, dynamic> dotoJoson = jsonDecode(body);
      CompanyDto companyDtoNew = CompanyDto.fromJson(dotoJoson);
      Company companyUpdated = companyDtoNew.toDomain(); 

      return right(companyUpdated);
    }on Exception {
      return left(const CompanyFailure.unableToUpdate());
    }
  }

  @override
  Future<Either<CompanyFailure, Unit>> delete(Company company) async {
     try{
      await companyDataProvider.delete(company.id.getOrCrash());
      return right(unit);
    }on Exception {
      return left(const CompanyFailure.unexpected());
    }
  }

 

  
}