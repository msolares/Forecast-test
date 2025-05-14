import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheathertest/database/user-entity.dart';

import '../../../domain/entities/user/login.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
abstract class Login with _$Login {
  const factory Login({
    required String password,
    required String user,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  factory Login.fromDomain(LoginMdl model) => Login(
    user: model.user,
    password: model.password,
  );
}

extension LoginMapper on Login {
  LoginMdl toDomain() => LoginMdl(
    user,
    password,
  );
}

extension LoginMapperBd on Login {
  LoginEntity toBd() => LoginEntity(username: user, password: password);
}
