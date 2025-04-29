import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user/login.dart';


part 'user_event.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.initialEvent() = initialEvent;
  const factory UserEvent.loginEvent(Login login) = loginEvent;
  const factory UserEvent.registreEvent(Login login) = registreEvent;
}