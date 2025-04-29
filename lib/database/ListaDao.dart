

import 'package:floor/floor.dart';
import 'package:wheathertest/database/user-entity.dart';
@dao
abstract class LoginDao {
  @Query('SELECT * FROM user where username =:user and password=:pass')
  Future<LoginEntity?> getUserByUserAndPass(String user, String pass);

  @insert
  Future<int?> insertUser(LoginEntity user);

  @update
  Future<int?> updateUSer(LoginEntity user);

  @delete
  Future<int?> deleteUser(LoginEntity user);
}