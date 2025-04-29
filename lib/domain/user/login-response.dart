import 'package:freezed_annotation/freezed_annotation.dart';

import 'login.dart';
part 'login-response.freezed.dart';
part 'login-response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse{
  const factory LoginResponse({
    @JsonKey(name: 'status_code')required int StatusCode,
    String? desc,
    required Login login,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);
}