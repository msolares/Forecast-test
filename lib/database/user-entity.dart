
import 'package:floor/floor.dart';

import '../domain/user/login.dart';


@Entity(tableName: 'user')
class LoginEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String username;
  String password;

  LoginEntity({
    this.id,
    required this.username,
    required this.password,
  });
}

extension ListaEntityConversion on LoginEntity{
  Login convertToLista (){
    return Login(user: username, password: password);
  }
}