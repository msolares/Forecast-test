import 'package:wheathertest/domain/entities/user/login-response.dart';
import 'package:wheathertest/domain/entities/user/login.dart';
import '../../../data/models/user/login_dto.dart';

abstract class UserRepository {
  Future<LoginResponseMdl> getUserLogin(Login login);
  Future<bool> getUserRegistre(Login login);
}