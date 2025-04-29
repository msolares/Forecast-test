// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login-response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      StatusCode: (json['status_code'] as num).toInt(),
      desc: json['desc'] as String?,
      login: Login.fromJson(json['login'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'status_code': instance.StatusCode,
      'desc': instance.desc,
      'login': instance.login,
    };
