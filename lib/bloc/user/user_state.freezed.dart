// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState()';
  }
}

/// @nodoc
class $UserStateCopyWith<$Res> {
  $UserStateCopyWith(UserState _, $Res Function(UserState) __);
}

/// @nodoc

class InitialState extends UserState {
  const InitialState() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserState.initialState()';
  }
}

/// @nodoc

class LoadingState extends UserState {
  const LoadingState(this.load) : super._();

  final bool load;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      _$LoadingStateCopyWithImpl<LoadingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingState &&
            (identical(other.load, load) || other.load == load));
  }

  @override
  int get hashCode => Object.hash(runtimeType, load);

  @override
  String toString() {
    return 'UserState.loadingState(load: $load)';
  }
}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) _then) =
      _$LoadingStateCopyWithImpl;
  @useResult
  $Res call({bool load});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._self, this._then);

  final LoadingState _self;
  final $Res Function(LoadingState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? load = null,
  }) {
    return _then(LoadingState(
      null == load
          ? _self.load
          : load // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class LoginState extends UserState {
  const LoginState(this.loginResponse) : super._();

  final LoginResponse loginResponse;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse);

  @override
  String toString() {
    return 'UserState.loginState(loginResponse: $loginResponse)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call({LoginResponse loginResponse});

  $LoginResponseCopyWith<$Res> get loginResponse;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loginResponse = null,
  }) {
    return _then(LoginState(
      null == loginResponse
          ? _self.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponse,
    ));
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<$Res> get loginResponse {
    return $LoginResponseCopyWith<$Res>(_self.loginResponse, (value) {
      return _then(_self.copyWith(loginResponse: value));
    });
  }
}

/// @nodoc

class LogOutState extends UserState {
  const LogOutState(this.logOut) : super._();

  final bool logOut;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogOutStateCopyWith<LogOutState> get copyWith =>
      _$LogOutStateCopyWithImpl<LogOutState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogOutState &&
            (identical(other.logOut, logOut) || other.logOut == logOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType, logOut);

  @override
  String toString() {
    return 'UserState.logOutState(logOut: $logOut)';
  }
}

/// @nodoc
abstract mixin class $LogOutStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory $LogOutStateCopyWith(
          LogOutState value, $Res Function(LogOutState) _then) =
      _$LogOutStateCopyWithImpl;
  @useResult
  $Res call({bool logOut});
}

/// @nodoc
class _$LogOutStateCopyWithImpl<$Res> implements $LogOutStateCopyWith<$Res> {
  _$LogOutStateCopyWithImpl(this._self, this._then);

  final LogOutState _self;
  final $Res Function(LogOutState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? logOut = null,
  }) {
    return _then(LogOutState(
      null == logOut
          ? _self.logOut
          : logOut // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class RegistreState extends UserState {
  const RegistreState(this.registre) : super._();

  final bool registre;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistreStateCopyWith<RegistreState> get copyWith =>
      _$RegistreStateCopyWithImpl<RegistreState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistreState &&
            (identical(other.registre, registre) ||
                other.registre == registre));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registre);

  @override
  String toString() {
    return 'UserState.registreState(registre: $registre)';
  }
}

/// @nodoc
abstract mixin class $RegistreStateCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory $RegistreStateCopyWith(
          RegistreState value, $Res Function(RegistreState) _then) =
      _$RegistreStateCopyWithImpl;
  @useResult
  $Res call({bool registre});
}

/// @nodoc
class _$RegistreStateCopyWithImpl<$Res>
    implements $RegistreStateCopyWith<$Res> {
  _$RegistreStateCopyWithImpl(this._self, this._then);

  final RegistreState _self;
  final $Res Function(RegistreState) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? registre = null,
  }) {
    return _then(RegistreState(
      null == registre
          ? _self.registre
          : registre // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
