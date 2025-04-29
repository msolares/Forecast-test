import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/user/user_bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/components/flag-selector/BuildFlagSelector.dart';
import 'package:wheathertest/components/generic/build-text.field.dart';
import 'package:wheathertest/components/generic/elevated-button-widget.dart';
import 'package:wheathertest/domain/user/login.dart';
import 'package:wheathertest/ui/wather-list.dart';
import 'package:wheathertest/util/navegacion/Navegacion.dart';
import '../bloc/user/user_state.dart';
import '../generated/l10n.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  UserBloc _userBloc = Injector.appInstance.get<UserBloc>();
  bool _loading = false;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() {
    _userBloc.add(loginEvent(Login(password: _passwordController.text, user: _usernameController.text)));
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocProvider(
      create: (context) => _userBloc,
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          state.when(
              initialState: (){},
              loadingState: (){
                setState(() {
                  _loading = true;
                });
              },
              loginState: (login){
                if (login.StatusCode == 200 || login.StatusCode == 201){
                  Navegacion().goTo(context, WeatherTabView());
                }
              },
              registreState: (registre) {}
              );
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6DD5FA), Color(0xFF2980B9)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BuildFlagSeletor(),
                const SizedBox(height: 100),
                Text(
                  s.login,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                BuildTextField(
                    controller: _usernameController, label: s.username, icon: Icons.person, validator: (value) => value == null || value.isEmpty ? "El usuario es requerido" : null,),
                const SizedBox(height: 20),
                BuildTextField(
                    controller: _passwordController, label: s.password, icon: Icons.lock, validator: (value) => value == null || value.isEmpty ? "la contraseña es requerida" : null,),
                const SizedBox(height: 30),
                ElevatedButtonWidget(s.button, _login)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
