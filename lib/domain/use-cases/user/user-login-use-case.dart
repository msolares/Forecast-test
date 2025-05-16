


import 'package:wheathertest/domain/repositories/user/user-repository.dart';
import '../../../data/models/user/login_dto.dart';
import '../../entities/user/login-response.dart';

class LoginUseCase {
  UserRepository _userRepository;
  LoginUseCase (this._userRepository);

  Future<LoginResponseMdl> loginUseCase(Login login) async {
    return await _userRepository.getUserLogin(login);
  }
}