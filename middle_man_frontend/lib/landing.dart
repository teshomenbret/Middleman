import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:middle_man_frontend/application/auth/logIn/bloc/login_bloc.dart';
import 'package:middle_man_frontend/presentation/routes/routes.dart';
import 'application/auth/logIn/bloc/login_state.dart';

// ignore: must_be_immutable
class LandingPage extends StatelessWidget {
  String text =
      "you’re going to have toyour ap doesn’t work if you change your spec files. But hot restartdoes work, and it should be much faster than stopping and starting your app. You canperform a hot restart by typing R into the terminal in which you ran flutter run.Now you can access that image in the counter  by adding an  ge widget to";

  LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Scaffold(
          body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 50),
          child: Column(children: [
            const Image(image: AssetImage("middleman.jpg")),
            const SizedBox(
              height: 20,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color(0x0003021a),
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                ),
                children: [
                  TextSpan(
                      text: 'middle',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.black)),
                  TextSpan(
                      text: 'man',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(255, 21, 17, 224))),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(text),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 19, 10, 200)),
                    elevation: MaterialStateProperty.all(10),
                  ),
                  child: const Text("Register ",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                  onPressed: () {
                    context.go(Routes.register);
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 227, 219, 219),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      Colors.black,
                    ),
                    elevation: MaterialStateProperty.all(10),
                  ),
                  child: const Text(" log in",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                  onPressed: () {
                    // BlocProvider.of<LoginBloc>(context)
                    //     .add(const LoginEventPressed());
                    context.go(Routes.signIn);
                  }),
            ),
          ]),
        ),
      ));
    });
  }
}
