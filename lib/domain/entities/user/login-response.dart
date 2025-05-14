import 'login.dart';

class LoginResponseMdl {
    int statusCode;
    String? desc;
    LoginMdl login;

    LoginResponseMdl(this.statusCode, this.desc, this.login);
}