import 'package:floor/floor.dart';
import '../domain/entities/user/login.dart';

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
  LoginMdl convertToLista (){
    return LoginMdl( username,  password);
  }
}