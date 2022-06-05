// ignore: file_names
import 'package:flutter/material.dart';
 
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:middle_man_frontend/application/auth/logIn/bloc/login_bloc.dart';
import 'package:middle_man_frontend/domain/auth/user.dart';
import 'package:middle_man_frontend/domain/auth/value_objects.dart';
import 'package:middle_man_frontend/presentation/routes/routes.dart';
 
import '../../application/auth/logIn/bloc/login_event.dart';
 

// ignore: use_key_in_widget_constructors
class LogIn extends StatelessWidget {
  TextEditingController firstController = TextEditingController();

  TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding:
            const EdgeInsets.only(left: 60, right: 60, bottom: 30, top: 400),
        child: Form(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                controller: firstController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'User Name',
                    hintText: 'Enter your user name',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            TextFormField(
                obscureText: true,
                controller: secondController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: 'password',
                    hintText: 'Enter your password',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
            Padding(
                padding: const EdgeInsets.only(left: 2, right: 10, top: 10),
                child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 19, 10, 200)),
                          elevation: MaterialStateProperty.all(10),
                        ),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        onPressed: () {
                          context.go(Routes.boarding);
                         
                          var form = Auth(
                            username: Name(firstController.text),
                            password: Password(secondController.text),
                          );
                          context.go(Routes.boarding);

                          BlocProvider.of<LoginBloc>(context).add(
                            LoginEventLogin(form),
                          );

                          
                        }))),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 10, top: 10),
              child: Row(
                children: [
                  const Text(
                    "Don't have an Account ?    ",
                    style: TextStyle(
                        fontFamily: 'Intent',
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                      child: const Text('Sign up',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 18, 225),
                              fontWeight: FontWeight.w700,
                              fontSize: 15)),
                      onTap: () {
                        context.go(Routes.register);
                      })
                ],
              ),
            )
          ],
        )),
      )),
    );
  }
}
