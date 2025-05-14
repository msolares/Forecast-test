import '../../../database.dart';
import '../../api-client-interfaz.dart';
import '../../models/user/login_dto.dart';
import '../../models/user/login_response_dto.dart';

class LoginDataSource {
  final ApiClient apiClient;

  LoginDataSource(this.apiClient);

  Future<LoginResponse> login(Login login) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    /*Todo, habria que llamar al post de login para obtener respuesta de un servidor pero como no tengo un WS con login lo vamos a hacer con base de datos interna*/

    try {
      final user = await Database.database.loginDao.getUserByUserAndPass(
          login.user, login.password);
      if (user != null) {
        return LoginResponse(
            statusCode: 200, desc:  "", login: Login(password: "", user: user.username));
      } else {
        return LoginResponse(
            statusCode: 404, desc:  "", login: Login(user: '', password: ''));
      }
    } catch (e) {
      return LoginResponse(
          statusCode: 400, desc:  "", login: Login(user: '', password: ''));
    }
  }
}