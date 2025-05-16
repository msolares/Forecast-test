


import 'package:wheathertest/domain/repositories/user/user-repository.dart';
import '../../../data/models/user/login_dto.dart';

class RegistreUseCase {
  UserRepository _userRepository;
  RegistreUseCase (this._userRepository);

  Future<bool> registreUseCase(Login login) async {
    return await _userRepository.getUserRegistre(login);
  }
}