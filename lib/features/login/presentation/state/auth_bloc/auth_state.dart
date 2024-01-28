part of 'auth_bloc.dart';

sealed class AuthState {
  const AuthState();
}

class AuthInitialState extends AuthState {
  const AuthInitialState();
}

class AuthAuthenticatedState extends AuthState {
  const AuthAuthenticatedState();
}

class AuthUnauthenticatedState extends AuthState {
  const AuthUnauthenticatedState();
}
