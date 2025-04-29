import 'package:wheathertest/domain/user/login-response.dart';
import '../../domain/user/login.dart';
import '../ApiClientInterfaz.dart';

class LoginService {
  final ApiClient apiClient;
  LoginService(this.apiClient);

  Future<LoginResponse> login(Login login) async{
    var headers = {
      'Content-Type': 'application/json',
    };

    //Todo, habria que llamar al post de login para obtener respuesta de un servidor.
    //final response = await apiClient.post('${Entorno.Enviroment()}/login',  headers, );

    //Lo vamos a hacer manualmente para simular un login.
    if (login.user == "marcos" && login.password == "1234"){
      return LoginResponse(StatusCode: 200, login: Login(password: "", user: "marcos"));
    }else{
      return LoginResponse(StatusCode: 400, login: Login(password: "", user: ""));
    }
  }
}