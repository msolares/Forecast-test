// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent()';
  }
}

/// @nodoc
class $UserEventCopyWith<$Res> {
  $UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}

/// @nodoc

class InitialEvent implements UserEvent {
  const InitialEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent.initial()';
  }
}

/// @nodoc

class LoginEvent implements UserEvent {
  const LoginEvent(this.login);

  final Login login;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      _$LoginEventCopyWithImpl<LoginEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @override
  String toString() {
    return 'UserEvent.login(login: $login)';
  }
}

/// @nodoc
abstract mixin class $LoginEventCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) _then) =
      _$LoginEventCopyWithImpl;
  @useResult
  $Res call({Login login});

  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._self, this._then);

  final LoginEvent _self;
  final $Res Function(LoginEvent) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? login = null,
  }) {
    return _then(LoginEvent(
      null == login
          ? _self.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
    ));
  }

  /// Create a copy of UserEvent
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

class LogOutEvent implements UserEvent {
  const LogOutEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent.loginOut()';
  }
}

/// @nodoc

class RegistreEvent implements UserEvent {
  const RegistreEvent(this.login);

  final Login login;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistreEventCopyWith<RegistreEvent> get copyWith =>
      _$RegistreEventCopyWithImpl<RegistreEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistreEvent &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @override
  String toString() {
    return 'UserEvent.registre(login: $login)';
  }
}

/// @nodoc
abstract mixin class $RegistreEventCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $RegistreEventCopyWith(
          RegistreEvent value, $Res Function(RegistreEvent) _then) =
      _$RegistreEventCopyWithImpl;
  @useResult
  $Res call({Login login});

  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class _$RegistreEventCopyWithImpl<$Res>
    implements $RegistreEventCopyWith<$Res> {
  _$RegistreEventCopyWithImpl(this._self, this._then);

  final RegistreEvent _self;
  final $Res Function(RegistreEvent) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? login = null,
  }) {
    return _then(RegistreEvent(
      null == login
          ? _self.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
    ));
  }

  /// Create a copy of UserEvent
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
