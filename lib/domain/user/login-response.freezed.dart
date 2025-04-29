// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login-response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginResponse {
  @JsonKey(name: 'status_code')
  int get StatusCode;
  String? get desc;
  Login get login;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      _$LoginResponseCopyWithImpl<LoginResponse>(
          this as LoginResponse, _$identity);

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginResponse &&
            (identical(other.StatusCode, StatusCode) ||
                other.StatusCode == StatusCode) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, StatusCode, desc, login);

  @override
  String toString() {
    return 'LoginResponse(StatusCode: $StatusCode, desc: $desc, login: $login)';
  }
}

/// @nodoc
abstract mixin class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) _then) =
      _$LoginResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int StatusCode,
      String? desc,
      Login login});

  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._self, this._then);

  final LoginResponse _self;
  final $Res Function(LoginResponse) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? StatusCode = null,
    Object? desc = freezed,
    Object? login = null,
  }) {
    return _then(_self.copyWith(
      StatusCode: null == StatusCode
          ? _self.StatusCode
          : StatusCode // ignore: cast_nullable_to_non_nullable
              as int,
      desc: freezed == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      login: null == login
          ? _self.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
    ));
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginCopyWith<$Res> get login {
    return $LoginCopyWith<$Res>(_self.login, (value) {
      return _then(_self.copyWith(login: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LoginResponse implements LoginResponse {
  const _LoginResponse(
      {@JsonKey(name: 'status_code') required this.StatusCode,
      this.desc,
      required this.login});
  factory _LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int StatusCode;
  @override
  final String? desc;
  @override
  final Login login;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginResponseCopyWith<_LoginResponse> get copyWith =>
      __$LoginResponseCopyWithImpl<_LoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginResponse &&
            (identical(other.StatusCode, StatusCode) ||
                other.StatusCode == StatusCode) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, StatusCode, desc, login);

  @override
  String toString() {
    return 'LoginResponse(StatusCode: $StatusCode, desc: $desc, login: $login)';
  }
}

/// @nodoc
abstract mixin class _$LoginResponseCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$LoginResponseCopyWith(
          _LoginResponse value, $Res Function(_LoginResponse) _then) =
      __$LoginResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int StatusCode,
      String? desc,
      Login login});

  @override
  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class __$LoginResponseCopyWithImpl<$Res>
    implements _$LoginResponseCopyWith<$Res> {
  __$LoginResponseCopyWithImpl(this._self, this._then);

  final _LoginResponse _self;
  final $Res Function(_LoginResponse) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? StatusCode = null,
    Object? desc = freezed,
    Object? login = null,
  }) {
    return _then(_LoginResponse(
      StatusCode: null == StatusCode
          ? _self.StatusCode
          : StatusCode // ignore: cast_nullable_to_non_nullable
              as int,
      desc: freezed == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      login: null == login
          ? _self.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
    ));
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginCopyWith<$Res> get login {
    return $LoginCopyWith<$Res>(_self.login, (value) {
      return _then(_self.copyWith(login: value));
    });
  }
}

// dart format on
