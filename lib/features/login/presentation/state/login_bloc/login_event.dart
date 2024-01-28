part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.enterNubmer(String? phoneNumber) = _EnterNubmer;
  const factory LoginEvent.sendNubmer() = _SendNubmer;
  const factory LoginEvent.enterCode(String? passcode) = _EnterCode;
  const factory LoginEvent.sendCode() = _SendCode;
}
