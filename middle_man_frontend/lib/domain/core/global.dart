 

import 'package:shared_preferences/shared_preferences.dart';

class Global{
void saveToken(String tokenIn) async {
 SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('token', tokenIn);
}
void saveUsername(String username) async {
  

 SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('username', username);
}

void savepassword(String password) async {
  

 SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('password', password);
}

void saveRoleUser(String roleuser) async {
  

 SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('roleuser',roleuser);
}

void saveRoleCompany(String rolecompany) async {
  

 SharedPreferences data = await SharedPreferences.getInstance();
    data.setString('rolecompany',rolecompany);
}

Future<String?>getToken() async {
  
  SharedPreferences data = await SharedPreferences.getInstance();
  String? token = data.getString('token');
  return token;

  }

Future<String?>getUserName() async {
  
  SharedPreferences data = await SharedPreferences.getInstance();
  String? username = data.getString('username');
  return username;

  }

Future<String?>getUserPassWoed() async {
  
  SharedPreferences data = await SharedPreferences.getInstance();
  String? password = data.getString('password');
  return password;

  }

Future<String?>getRoleUser() async {
  
  SharedPreferences data = await SharedPreferences.getInstance();
  String? roleuser = data.getString('roleuser');
  return roleuser;

  }

Future<String?>getRoleCompany() async {
  
  SharedPreferences data = await SharedPreferences.getInstance();
  String? rolecompany = data.getString('rolecompany');
  return rolecompany;

  }

}