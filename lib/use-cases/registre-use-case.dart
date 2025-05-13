import 'package:wheathertest/data/user/registre-respository.dart';

import '../domain/user/login.dart';

class RegistreUseCase {
  RegistreRepository _registreRepository;
  RegistreUseCase (this._registreRepository);

  Future<bool> registreUseCase(LoginMdl login) async {
    return await _registreRepository.registre(login);
  }
}