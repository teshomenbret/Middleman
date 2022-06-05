import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:middle_man_frontend/domain/core/global.dart';

import '../../../domain/auth/user.dart';

class AuthDataProvider {
  static const String _baseUrl = "http://localhost:8080/api";
  Future<Response> login(Auth auth) async {
    var body = jsonEncode({
      'username': auth.username.getOrCrash(),
      'password': auth.password.getOrCrash(),
    });
    final response = await post(
      Uri.parse("http://localhost:8080/api/login/"),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: body,
    );
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception("Could not login");
    }
  }

  Future<String> register(Map<String, dynamic> userAsJoson) async {
    
    Global global = Global();
    String? token =  await global.getToken();
    final response = await post(Uri.parse("http://localhost:8080/api/users/"),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
        body: jsonEncode(userAsJoson));
    
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception("Could not register user");
    }
  }
}
