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

  void _reg() {
    _userBloc.add(registreEvent(Login(password: _passwordController.text, user: _usernameController.text)));
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
              loginState: (login){},
              registreState: (registre) {
                if(registre){
                  Navegacion().Back(context);
                }else{
                  //todo pop up para aviso. o caso de uso en caso de que falle el registro que toque.
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
                const SizedBox(height: 100),
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
                    controller: _usernameController, label: s.username, icon: Icons.person, validator: (value) => value == null || value.isEmpty ? s.usuariorequerido : null,),
                const SizedBox(height: 20),
                BuildTextField(
                    controller: _passwordController, label: s.password, icon: Icons.lock, validator: (value) => value == null || value.isEmpty ? s.contrasenarequerida : null, obscureText: true,),
                const SizedBox(height: 30),
                ElevatedButtonWidget(s.registrate, _reg),
                const SizedBox(height: 30,),
                InkWell(
                  onTap: () => Navegacion().Back(context),
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
