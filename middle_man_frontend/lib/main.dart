import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:middle_man_frontend/presentation/routes/my_router.dart';
import 'application/auth/logIn/bloc/login_bloc.dart';
import 'application/auth/logIn/bloc/login_state.dart';
import 'application/item/bloc/item_form_bloc.dart';
import 'infrastructure/data_provider/auth/auth_data_rovider.dart';
import 'infrastructure/data_provider/item/item_remote_data_provider.dart';
import 'infrastructure/repositories/auth/auth_repository.dart';
import 'infrastructure/repositories/items/item_repository.dart';
import 'middleman_bloc_observer.dart';

void main() async {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: MiddleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                ItemFormBloc(ItemRepository(ItemRemoteDataProvider())),
          ),
          BlocProvider(
            create: (context) => LoginBloc(AuthRepository(AuthDataProvider())),
          ),
        ],
        // chi
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.black87,
            fontFamily: 'Georgia',
            textTheme: const TextTheme(
                headline1: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                headline4: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                bodyText2: TextStyle()),
          ),
          home: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
            return App(authBloc: BlocProvider.of<LoginBloc>(context));
          }),
        ));
  }
}
