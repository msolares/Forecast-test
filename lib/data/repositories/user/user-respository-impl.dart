import 'package:wheathertest/data/datasources/forecast/forecast-datasources.dart';
import 'package:wheathertest/data/datasources/user/login-datasource.dart';
import 'package:wheathertest/data/datasources/user/registre-datasource.dart';
import 'package:wheathertest/data/models/forecast/forecast_dto.dart';
import 'package:wheathertest/data/models/forecast/params_dto.dart';
import 'package:wheathertest/data/models/user/login_dto.dart';
import 'package:wheathertest/data/models/user/login_response_dto.dart';
import 'package:wheathertest/domain/entities/forecast/forecast.dart';
import 'package:wheathertest/domain/entities/user/login-response.dart';
import 'package:wheathertest/domain/entities/user/login.dart';
import 'package:wheathertest/domain/repositories/user/user-repository.dart';

import '../../../domain/repositories/forecast/forecast-repository.dart';

class UserRepositoryImpl implements UserRepository {
  final LoginDataSource _loginDataSource;
  final RegistreDataSource _registreDataSource;
  UserRepositoryImpl(this._loginDataSource, this._registreDataSource);

  @override
  Future<LoginResponseMdl> getUserLogin(Login login) async{
    final lgn = await _loginDataSource.login(login);
    return lgn.toDomain();
  }

  @override
  Future<bool> getUserRegistre(Login login) async{
    final rgn = await _registreDataSource.registre(login);
    return rgn;
  }
}