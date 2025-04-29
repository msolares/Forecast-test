import 'package:bloc/bloc.dart';
import 'package:wheathertest/bloc/user/user_event.dart';
import 'package:wheathertest/bloc/user/user_state.dart';
import 'package:wheathertest/use-cases/login.dart';


class UserBloc extends Bloc<UserEvent, UserState> {
  LoginUseCase loginUseCase;
  UserBloc(this.loginUseCase) : super(UserState.initialState()) {
    on<loginEvent>((event, emit)async {
      emit(UserState.loadingState());
      final login = await loginUseCase.loginUseCase(event.login);
      emit(UserState.loginState(login));
    });
  }
}
