import 'package:bloc/bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/bloc/user/user_state.dart';

import '../../domain/use-cases/user/get-user-login-use-case.dart';
import '../../domain/use-cases/user/get-user-registre-use-case.dart';


class UserBloc extends Bloc<UserEvent, UserState> {
  LoginUseCase loginUseCase;
  RegistreUseCase registreUseCase;
  UserBloc(this.loginUseCase, this.registreUseCase) : super(UserState.initialState()) {
    on<loginEvent>((event, emit)async {
      emit(UserState.loadingState(true));
      final login = await loginUseCase.loginUseCase(event.login);
      emit(UserState.loginState(login));
      emit(UserState.loadingState(false));
    });
    on<registreEvent>((event, emit)async {
      emit(UserState.loadingState(true));
      final login = await registreUseCase.registreUseCase(event.login);
      emit(UserState.registreState(login));
      emit(UserState.loadingState(false));
    });
    on<logOut>((event, emit)async {
      emit(UserState.loadingState(true));
      //Todo aquí iria la lógica para el logout, borrado de datos temporales y respondemos en este caso un true para ir a la página de inicio
      emit(UserState.logOutState(true));
      emit(UserState.loadingState(false));
    });
  }
}
