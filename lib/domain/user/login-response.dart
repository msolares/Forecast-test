
 import '../../data/models/user/login_dto.dart';

class LoginResponseMdl {
    int statusCode;
    String? desc;
    Login login;

    LoginResponseMdl(this.statusCode, this.desc, this.login);
}