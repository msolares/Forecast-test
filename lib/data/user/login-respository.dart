import 'package:wheathertest/data/user/login-service.dart';
import 'package:wheathertest/domain/user/login-response.dart';

import '../../domain/user/login.dart';

class LoginRepository {
  LoginService _loginService;
  LoginRepository(this._loginService);
  Future<LoginResponse> login(Login login) async =>  await _loginService.login(login);
}