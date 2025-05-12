import '../../database.dart';
import '../../domain/user/login.dart';
import '../api-client-interfaz.dart';

class RegistreService {
  final ApiClient apiClient;

  RegistreService(this.apiClient);

  Future<bool> registre(Login login) async {
    var headers = {
      'Content-Type': 'application/json',
    };

    /*Todo, habria que llamar al post de login para obtener respuesta de un servidor pero como no tengo un WS con login lo bamos a hacer con base de datos interna*/

    try {
      final insert = await Database.database.loginDao.insertUser(login.convertToLoginEntity());
      if (insert != null && insert > -1) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}