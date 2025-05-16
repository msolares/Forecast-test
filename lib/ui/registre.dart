import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injector/injector.dart';
import 'package:wheathertest/bloc/user/user_bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/components/flag-selector/build-flag-selector.dart';
import 'package:wheathertest/components/generic/build-text.field.dart';
import 'package:wheathertest/components/generic/elevated-button-widget.dart';
import '../bloc/user/user_state.dart';
import '../components/generic/show-dialog.dart';
import '../data/models/user/login_dto.dart';
import '../generated/l10n.dart';
import '../util/navegation/navegation.dart';

class RegistrePage extends StatefulWidget {
  const RegistrePage({Key? key}) : super(key: key);

  @override
  State<RegistrePage> createState() => _RegistrePageState();
}

class _RegistrePageState extends State<RegistrePage> {
  UserBloc _userBloc = Injector.appInstance.get<UserBloc>();
  bool _loading = false;

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _onTapRegistre() {
    _userBloc.add(RegistreEvent(Login(user:  _passwordController.text, password:  _usernameController.text)));
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocProvider.value(
      value: _userBloc,
      child: BlocListener<UserBloc, UserState>(
        listener: (context, state) {
          state.when(
            initial: (){},
            loading: (load){
              setState(() {
                _loading = load;
              });
            },
            login: (login){},
            logOut: (logout){},
            registre: (registre) {
              if(registre){
                NavigationService.back(context);
              }else{
                Navigator.of(context).push(
                    ShowDialog().dialogBuilder(context, s.aviso, s.nosehapodidoregistrar)
                );
              }
            }
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
                const SizedBox(height: 20),
                Text(
                  s.registro,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
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
                ElevatedButtonWidget(s.registrate, _onTapRegistre),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: () => NavigationService.back(context),
                  child: Text(
                    s.yatinescuenta,
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
        ),
      ),
    );
  }
}
