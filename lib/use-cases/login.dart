import 'package:wheathertest/data/user/login-respository.dart';
import 'package:wheathertest/domain/user/login-response.dart';

import '../domain/user/login.dart';

class LoginUseCase {
  LoginRepository _loginRepository;
  LoginUseCase (this._loginRepository);

  Future<LoginResponse> loginUseCase(Login login) async {
    return await _loginRepository.login(login);
  }
}