import 'package:wheathertest/data/user/login-service.dart';
import 'package:wheathertest/data/user/registre-service.dart';
import 'package:wheathertest/domain/user/login-response.dart';

import '../../domain/user/login.dart';

class RegistreRepository {
  RegistreService _registreService;
  RegistreRepository(this._registreService);
  Future<bool> registre(Login login) async =>  await _registreService.registre(login);
}