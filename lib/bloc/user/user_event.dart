import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user/login_dto.dart';
import '../../domain/entities/user/login.dart';


part 'user_event.freezed.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.initial() = InitialEvent;
  const factory UserEvent.login(Login login) = LoginEvent;
  const factory UserEvent.loginOut() = LogOutEvent;
  const factory UserEvent.registre(Login login) = RegistreEvent;
}