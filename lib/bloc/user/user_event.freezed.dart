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

class initialEvent implements UserEvent {
  const initialEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is initialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent.initialEvent()';
  }
}

/// @nodoc

class loginEvent implements UserEvent {
  const loginEvent(this.login);

  final Login login;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $loginEventCopyWith<loginEvent> get copyWith =>
      _$loginEventCopyWithImpl<loginEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is loginEvent &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @override
  String toString() {
    return 'UserEvent.loginEvent(login: $login)';
  }
}

/// @nodoc
abstract mixin class $loginEventCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $loginEventCopyWith(
          loginEvent value, $Res Function(loginEvent) _then) =
      _$loginEventCopyWithImpl;
  @useResult
  $Res call({Login login});

  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class _$loginEventCopyWithImpl<$Res> implements $loginEventCopyWith<$Res> {
  _$loginEventCopyWithImpl(this._self, this._then);

  final loginEvent _self;
  final $Res Function(loginEvent) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? login = null,
  }) {
    return _then(loginEvent(
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

class logOut implements UserEvent {
  const logOut();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is logOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserEvent.loginOut()';
  }
}

/// @nodoc

class registreEvent implements UserEvent {
  const registreEvent(this.login);

  final Login login;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $registreEventCopyWith<registreEvent> get copyWith =>
      _$registreEventCopyWithImpl<registreEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is registreEvent &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @override
  String toString() {
    return 'UserEvent.registreEvent(login: $login)';
  }
}

/// @nodoc
abstract mixin class $registreEventCopyWith<$Res>
    implements $UserEventCopyWith<$Res> {
  factory $registreEventCopyWith(
          registreEvent value, $Res Function(registreEvent) _then) =
      _$registreEventCopyWithImpl;
  @useResult
  $Res call({Login login});

  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class _$registreEventCopyWithImpl<$Res>
    implements $registreEventCopyWith<$Res> {
  _$registreEventCopyWithImpl(this._self, this._then);

  final registreEvent _self;
  final $Res Function(registreEvent) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? login = null,
  }) {
    return _then(registreEvent(
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
