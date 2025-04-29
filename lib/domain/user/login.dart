import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheathertest/database/user-entity.dart';
part 'login.freezed.dart';
part 'login.g.dart';

@freezed
abstract class Login with _$Login{
  const factory Login({
    required String password,
    required String user,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}

extension LoginConversion on Login{
  LoginEntity convertToLoginEntity (){
    return LoginEntity(username: user, password: password);
  }
}