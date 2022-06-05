import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:middle_man_frontend/landing.dart';
import 'package:middle_man_frontend/presentation/company/companyDetail.dart';
import 'package:middle_man_frontend/presentation/routes/routes.dart';
import 'package:middle_man_frontend/presentation/user/registerUser.dart';
import 'package:middle_man_frontend/presentation/user/userLogIn.dart';

import '../../application/auth/logIn/bloc/login_bloc.dart';
import '../../application/auth/logIn/bloc/login_event.dart';
import '../../application/auth/logIn/bloc/login_state.dart';
import '../Item.dart';
import '../company/logInUser.dart';
import '../user/UserHomePage.dart';
import '../user/UserProfile.dart';

class App extends StatelessWidget {
  final LoginBloc authBloc;
  late final GoRouter _router;

  App({Key? key, required this.authBloc}) : super(key: key) {
    _router = GoRouter(
        refreshListenable: GoRouterRefreshStream(authBloc.stream),
        redirect: (state) {
          // First Run
          // if (authBloc.state is   LoginStateInitial &&
          //     state.location != Routes.boarding &&
          //     state.location != Routes.signIn &&
          //     state.location != Routes.register) {
          //   if ((authBloc.state as AppInitialized).isFirstRun) {
          //     return Routes.boarding;
          //   }
          // }
          if (state is LoginStateInitial) {
            Routes.home;
          }
          // if (authBloc.state == const LoginState.initial() &&
          //     state.location != Routes.signIn &&
          //     state.location != Routes.register) {
          //   print("abe");
          //   print("kev");
          //   return Routes.home;
          // }
          // ;
          //   if (authBloc.state is AppInitialized &&
          //       state.location != Routes.boarding &&
          //       state.location != Routes.signIn &&
          //       state.location != Routes.register) {
          //     if ((authBloc.state as AppInitialized).token == null) {
          //       return Routes.signIn;
          //     }
          //   }

          //   // User logged out
          //   if (authBloc.state is LoginState.initial() &&
          //       state.location != Routes.boarding &&
          //       state.location != Routes.signIn &&
          //       state.location != Routes.register) {
          //     return Routes.signIn;
          //   }
          //   return null;
          // },
        },
        routes: [
          GoRoute(
            path: Routes.home,
            builder: (context, state) => LandingPage(),
          ),
          GoRoute(
              path: Routes.boarding,
              builder: (context, state) => const MyUser()),
          GoRoute(
            path: Routes.item,
            builder: (context, state) => const Iteme(),
          ),
          GoRoute(
            path: Routes.editProfile,
            builder: (context, state) => const UserProfile(),
          ),
          GoRoute(
            path: Routes.register,
            builder: (context, state) => SignUpUser(),
          ),
          GoRoute(
            path: Routes.signIn,
            builder: (context, state) => LogIn(),
          ),
          GoRoute(
            path: Routes.editProfile,
            builder: (context, state) => const UserProfile(),
          ),
          GoRoute(
            path: Routes.company,
            builder: (context, state) => CompanyDetail(),
          ),
        ]);

    // GoRoute(
    //   path: '${Routes.editQuestion}/:qid',
    //   builder: (context, state) {
    //     final qid = int.parse(state.params['qid']!);
    //     return EditQuestionScreen(qid: qid);
    //   },
    // ),
    // GoRoute(
    //   path: '${Routes.questionDetail}/:id',
    //   builder: (context, state) {
    //     final qid = int.parse(state.params['id']!);
    //     return QuestionDetailPage(questionId: qid);
    //   },
    // )
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
