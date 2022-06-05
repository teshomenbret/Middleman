import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:kt_dart/kt.dart';
import 'package:middle_man_frontend/domain/auth/user.dart';
import 'package:middle_man_frontend/domain/core/value_objects.dart';
import '../../application/auth/logIn/bloc/login_bloc.dart';
import '../../application/auth/logIn/bloc/login_event.dart';
import '../../application/auth/logIn/bloc/login_state.dart';
import '../../domain/auth/value_objects.dart';
import '../../infrastructure/repositories/auth/auth_repository.dart';
import '../routes/routes.dart';
import 'userLogIn.dart';

class SignUpUser extends StatefulWidget {
  SignUpUser({Key? key}) : super(key: key);

  @override
  State<SignUpUser> createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  bool _isNetworkInProgress = false;

  // final _formKey = GlobalKey<FormState>();

  TextEditingController firstController = TextEditingController();

  TextEditingController secondController = TextEditingController();

  TextEditingController thirdController = TextEditingController();

  TextEditingController fourthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
      if (state is LoginStateLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registering...')),
        );
        setState(() {
          _isNetworkInProgress = true;
        });
      } else {
        setState(() {
          _isNetworkInProgress = false;
        });
      }

      if (state is LoginStateSuccess) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Registration successful'),
            backgroundColor: Colors.green,
          ),
        );
        context.go(Routes.signIn);
      }

      if (state is LoginStateFailure) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("djnjbdsjbsdjcbsjdc"),
            backgroundColor: Theme.of(context).errorColor,
          ),
        );
      }
    }, builder: (context, state) {
      return Scaffold(
          body: Center(
              child: Padding(
        padding:
            const EdgeInsets.only(left: 60, right: 60, bottom: 30, top: 100),
        child: Form(
            
            child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text("Create account",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Intent",
                      fontWeight: FontWeight.w800)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                validator: (value) {
                  if (value!.length < 8) {
                    return 'Username must be at least 8 characters';
                  }
                  return null;
                },
                controller: firstController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'UserName',
                    hintText: 'Enter your User name',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                validator: (value) {
                  if (value!.length < 8) {
                    return 'Username must be at least 8 characters';
                  }
                  return null;
                },
                controller: secondController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: 'Full Name',
                    hintText: 'Enter Full Name',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
                validator: (value) {
                  if (value!.length < 8) {
                    return 'Username must be at least 8 characters';
                  }
                  return null;
                },
                controller: thirdController,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            TextFormField(
                validator: (value) {
                  if (value!.length < 8) {
                    return 'Username must be at least 8 characters';
                  }
                  return null;
                },
                controller: fourthController,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    labelText: 'password',
                    hintText: 'Enter your password',
                    labelStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
            Padding(
                padding: const EdgeInsets.only(top: 20),
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
                          'Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                        onPressed: () {
                          // if (_formKey.currentState!.validate()) {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => LogIn())
                          var form = User(
                              userame: Name(firstController.text),
                              lastName: Name(secondController.text),
                              firstName: Name(secondController.text),
                              email: EmailAddress(thirdController.text),
                              password: Password(fourthController.text),
                              id: UniqueId(),
                              roles: Role("USER"));

                          BlocProvider.of<LoginBloc>(context).add(
                            LoginEventRegister(form),
                          );

                          // BlocProvider.of<LoginBloc>(context)
                          //     .add(const LoginEventPressed());
                          context.go(Routes.register);

                          ;
                          // }
                        }))),
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 10, top: 10),
              child: Row(
                children: [
                  const Text(
                    "Already have an account ?    ",
                    style: TextStyle(
                        fontFamily: 'Intent',
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  InkWell(
                      child: const Text('Log in',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 18, 225),
                              fontWeight: FontWeight.w700,
                              fontSize: 15)),
                      onTap: () {
                        // BlocProvider.of<LoginBloc>(context)
                        //     .add(const LoginEventPressed());
                        context.go(Routes.signIn);
                        ;
                      })
                ],
              ),
            )
          ],
        )),
      )));
    });
  }
}
