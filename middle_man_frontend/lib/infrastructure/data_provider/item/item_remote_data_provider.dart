import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import '../../../domain/core/global.dart';
import 'i_item_data_provider.dart';

class ItemRemoteDataProvider extends IItemDataProvider {
  static const String _baseUrl = "http://localhost:8080/api/items/";

  @override
  Future<String> create(Map<String, dynamic> itemAsJoson) async {
    Global global = Global();
    String? token =  await global.getToken();

    final http.Response response = await http.post(Uri.parse(_baseUrl),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token"
        }, 
        body: jsonEncode(itemAsJoson)
        );
    if (response.statusCode == 200) {
      return response.body;
    }
    {
      throw Exception("Failed to create Item");
    }
  }

  @override
  // TODO this is not a corecet iplmentation
  Future<String> fetchByType(String type) async {
     Global global = Global();
    String? token =  await global.getToken();
    String searchpathe = type.toLowerCase();
    final response = await http.get(
      Uri.parse("$_baseUrl/$searchpathe"),
      headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
      );

    if (response.statusCode == 200) {
      return jsonEncode(response.body);
    } else {
      throw Exception("Fetching Item by type failed");
    }
  }

  @override
  Future<String> fetchAll() async {
     Global global = Global();
    String? token =  await global.getToken();
    final response = await http.get(Uri.parse(_baseUrl),
    headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
        },);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Could not fetch items");
    }
  }

  @override
  Future<String> update(Map<String, dynamic> itemAsJoson) async {
     Global global = Global();
    String? token =  await global.getToken();
    final response = await http.put(Uri.parse("$_baseUrl/"),
       headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token",
        }, 
        body: jsonEncode(itemAsJoson)
        );
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Could not update the course");
    }
  }

  @override
  Future<void> delete(String id) async {
     Global global = Global();
    String? token =  await global.getToken();
    String path = "http://localhost:8080/api/items";
   path ="$path/$id";
    final response = await http.delete(Uri.parse(path));
    print(response.statusCode);
    if (response.statusCode != 200) {
      throw Exception("Field to delete the item");
    }
  }
}