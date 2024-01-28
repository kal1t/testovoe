part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(PageState.initial) PageState pageState,
    String? phoneNumber,
    String? passcode,
    String? error,
  }) = _LoginState;
}

enum PageState {
  initial,
  loading,
  userPhoneSended,
  codeApplied,
}
