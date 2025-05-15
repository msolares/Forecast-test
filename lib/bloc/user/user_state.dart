
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user/login-response.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial() = InitialState;
  const factory UserState.loading(bool load) = LoadingState;
  const factory UserState.login(LoginResponseMdl loginResponse) = LoginState;
  const factory UserState.logOut(bool logOut) = LogOutState;
  const factory UserState.registre(bool registre) = RegistreState;

  Object? when<T>({
    required T Function() initial,
    required T Function(bool load) loading,
    required T Function(LoginResponseMdl loginResponse) login,
    required T Function(bool logOut) logOut,
    required T Function(bool registre) registre,
  }) {
    return switch (this) {
      InitialState() => initial(),
      LoadingState(:final load) => loading(load),
      LoginState(:final loginResponse) => login(loginResponse),
      LogOutState(:final logOut) => logOut,
      RegistreState(:final registre) => registre,
      // TODO: Handle this case.
      UserState() => throw UnimplementedError(),
    };
  }
}