import 'package:wheathertest/domain/user/login-response.dart';
import '../../DataBase.dart';
import '../../domain/user/login.dart';
import '../ApiClientInterfaz.dart';

class LoginService {
  final ApiClient apiClient;

  LoginService(this.apiClient);

  Future<LoginResponse> marclogin(Login login) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    /*Todo, habria que llamar al post de login para obtener respuesta de un servidor pero como no tengo un WS con login lo bamos a hacer con base de datos interna*/

    try {
      final user = await Database.database.loginDao.getUserByUserAndPass(
          login.user, login.password);
      if (user != null) {
        return LoginResponse(
            StatusCode: 200, login: Login(password: "", user: user.username));
      } else {
        return LoginResponse(
            StatusCode: 404, login: Login(password: "", user: ""));
      }
    } catch (e) {
      return LoginResponse(
          StatusCode: 400, login: Login(password: "", user: ""));
    }
  }
}