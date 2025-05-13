import 'package:wheathertest/domain/user/login-response.dart';
import '../../database.dart';
import '../../domain/user/login.dart';
import '../api-client-interfaz.dart';

class LoginService {
  final ApiClient apiClient;

  LoginService(this.apiClient);

  Future<LoginResponseMdl> login(LoginMdl login) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    /*Todo, habria que llamar al post de login para obtener respuesta de un servidor pero como no tengo un WS con login lo vamos a hacer con base de datos interna*/

    try {
      final user = await Database.database.loginDao.getUserByUserAndPass(
          login.user, login.password);
      if (user != null) {
        return LoginResponseMdl(
            StatusCode: 200, login: LoginMdl(password: "", user: user.username));
      } else {
        return LoginResponseMdl(
            StatusCode: 404, login: LoginMdl(password: "", user: ""));
      }
    } catch (e) {
      return LoginResponseMdl(
          StatusCode: 400, login: LoginMdl(password: "", user: ""));
    }
  }
}