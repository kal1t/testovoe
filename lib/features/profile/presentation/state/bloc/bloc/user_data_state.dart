part of 'user_data_bloc.dart';

@freezed
class UserDataState with _$UserDataState {
  const factory UserDataState({
    UserModel? userModel,
  }) = _UserDataState;
}
