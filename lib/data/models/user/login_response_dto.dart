import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/user/login-response.dart';
import 'login_dto.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @JsonKey(name: 'status_code') required int statusCode,
    String? desc,
    required Login login,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  factory LoginResponse.fromDomain(LoginResponseMdl model) => LoginResponse(
    statusCode: model.statusCode,
    desc: model.desc,
    login: Login.fromDomain(model.login),
  );
}

extension LoginResponseMapper on LoginResponse {
  LoginResponseMdl toDomain() => LoginResponseMdl(
    statusCode,
    desc,
    login.toDomain(),
  );
}
