import 'package:bloc/bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/bloc/user/user_state.dart';

import '../../domain/use-cases/user/get-user-login-use-case.dart';
import '../../domain/use-cases/user/get-user-registre-use-case.dart';


class UserBloc extends Bloc<UserEvent, UserState> {
  LoginUseCase loginUseCase;
  RegistreUseCase registreUseCase;
  UserBloc(this.loginUseCase, this.registreUseCase) : super(const UserState.initial()) {
    on<LoginEvent>((event, emit)async {
      emit(const UserState.loading(true));
      final login = await loginUseCase.loginUseCase(event.login);
      emit(UserState.login(login));
      emit(UserState.loading(false));
    });
    on<RegistreEvent>((event, emit)async {
      emit(const UserState.loading(true));
      final login = await registreUseCase.registreUseCase(event.login);
      emit(UserState.registre(login));
      emit(const UserState.loading(false));
    });
    on<LogOutEvent>((event, emit)async {
      emit(const UserState.loading(true));
      //Todo aquí iria la lógica para el logout, borrado de datos temporales y respondemos en este caso un true para ir a la página de inicio
      emit(const UserState.logOut(true));
      emit(UserState.loading(false));
    });
  }
}
