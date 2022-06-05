import 'dart:convert';
import 'dart:io';

import 'i_company_data_provider.dart';
import 'package:http/http.dart' as http;


class ComanyRemoteDataProvider extends ICompanyDataProvider {
  static const String _baseUrl = "http://localhost:8080/api/companies/";
  @override
  Future<String> fetchAll() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Could not fetch companies");
    }
  }

  @override
  Future<String> create(Map<String, dynamic> companyAsJoson) async {
    final http.Response response = await http.post(Uri.parse(_baseUrl),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },    
      body: jsonEncode(companyAsJoson)
        );
    if (response.statusCode == 200) {
      return response.body;
    }
    {
      throw Exception("Failed to create Company");
    }
  }

  @override
  Future<String> update(Map<String, dynamic> companyAsJoson) async {
    final response = await http.put(Uri.parse(_baseUrl),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: jsonEncode(companyAsJoson)
        );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Could not update the Company");
    }
  }

  @override
  Future<void> delete(String id) async {
   String path = "http://localhost:8080/api/companies";
   path ="$path/$id";

    final response = await http.delete(Uri.parse(path));
    if (response.statusCode != 200) {
      throw Exception("Field to delete the Company");
    }
  }
}