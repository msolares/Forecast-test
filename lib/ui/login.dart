import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/user/user_bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/components/flag-selector/build-flag-selector.dart';
import 'package:wheathertest/components/generic/build-text.field.dart';
import 'package:wheathertest/components/generic/elevated-button-widget.dart';
import 'package:wheathertest/ui/registre.dart';
import 'package:wheathertest/ui/wather-list.dart';
import 'package:wheathertest/util/navegacion/navegation.dart';
import '../bloc/user/user_state.dart';
import '../components/generic/show-dialog.dart';
import '../components/generic/while-you-wait.dart';
import '../data/models/user/login_dto.dart';
import '../domain/entities/user/login.dart';
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
    _userBloc.add(loginEvent(Login(user: _passwordController.text, password:  _usernameController.text)));
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocProvider.value(
      value: _userBloc,
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          state.when(
              initialState: (){},
              loadingState: (load){
                setState(() {
                  _loading = load;
                });
              },
              loginState: (login){
                if (login.statusCode == 200 || login.statusCode == 201){
                  Navegacion().goToFull(context, WeatherTabView());
                }else{
                  Navigator.of(context).push(
                    ShowDialog().dialogBuilder(context, s.aviso, s.credencialesincorrectas),
                  );
                }
                setState(() {
                  _loading = false;
                });
              },
              logOutState: (logout){},
              registreState: (registre) {}
          );
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              Container(
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
                    const SizedBox(height: 20),
                    Text(
                      s.login,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    BuildTextField(
                        controller: _usernameController, label: s.username, icon: Icons.person, validator: (value) {
                      if (value == null || value.isEmpty) return s.emailRequerido;
                      final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                      return emailRegex.hasMatch(value) ? null : s.emailInvalido;
                    },),
                    const SizedBox(height: 20),
                    BuildTextField(
                        controller: _passwordController, label: s.password, icon: Icons.lock, validator: (value) => value == null || value.isEmpty ? s.contrasenarequerida : null, obscureText: true,),
                    const SizedBox(height: 30),
                    ElevatedButtonWidget(s.button, _login),
                    const SizedBox(height: 30,),
                    InkWell(
                      onTap: () => Navegacion().goTo(context, RegistrePage()),
                      child: Text(
                        s.aunnotienescuenta,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible:_loading ,
                  child: WhileWait()
              )
            ],
          ),
        ),
      ),
    );
  }
}
