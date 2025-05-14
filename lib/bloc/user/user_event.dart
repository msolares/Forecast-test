import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user/login_dto.dart';
import '../../domain/entities/user/login.dart';


part 'user_event.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.initialEvent() = initialEvent;
  const factory UserEvent.loginEvent(Login login) = loginEvent;
  const factory UserEvent.loginOut() = logOut;
  const factory UserEvent.registreEvent(Login login) = registreEvent;
}