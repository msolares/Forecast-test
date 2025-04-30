
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheathertest/domain/user/login-response.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initialState() = InitialState;
  const factory UserState.loadingState(bool load) = LoadingState;
  const factory UserState.loginState(LoginResponse loginResponse) = LoginState;
  const factory UserState.logOutState(bool logOut) = LogOutState;
  const factory UserState.registreState(bool registre) = RegistreState;

  T when<T>({
    required T Function() initialState,
    required T Function(bool load) loadingState,
    required T Function(LoginResponse loginResponse) loginState,
    required T Function(bool logOut) logOutState,
    required T Function(bool registre) registreState,
  }) {
    return switch (this) {
      InitialState() => initialState(),
      LoadingState(:final load) => loadingState(load),
      LoginState(:final loginResponse) => loginState(loginResponse),
      LogOutState(:final logOut) => logOutState(logOut),
      RegistreState(:final registre) => registreState(registre),
      // TODO: Handle this case.
      UserState() => throw UnimplementedError(),
    };
  }
}