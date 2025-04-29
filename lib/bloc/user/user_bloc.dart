import 'package:bloc/bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/bloc/user/user_state.dart';
import 'package:wheathertest/use-cases/login.dart';
import 'package:wheathertest/use-cases/registre-use-case.dart';


class UserBloc extends Bloc<UserEvent, UserState> {
  LoginUseCase loginUseCase;
  RegistreUseCase registreUseCase;
  UserBloc(this.loginUseCase, this.registreUseCase) : super(UserState.initialState()) {
    on<loginEvent>((event, emit)async {
      emit(UserState.loadingState());
      final login = await loginUseCase.loginUseCase(event.login);
      emit(UserState.loginState(login));
    });
    on<registreEvent>((event, emit)async {
      emit(UserState.loadingState());
      final login = await registreUseCase.registreUseCase(event.login);
      emit(UserState.registreState(login));
    });
  }
}
