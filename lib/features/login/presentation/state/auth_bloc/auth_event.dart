part of 'auth_bloc.dart';

class AuthEvent {
  const AuthEvent();
}

class AuthLogoutEvent extends AuthEvent {
  const AuthLogoutEvent();
}

class AuthStatusChangedEvent extends AuthEvent {
  const AuthStatusChangedEvent(this.userModel);
  final UserModel? userModel;
}
