part of 'user_data_bloc.dart';

@freezed
class UserDataEvent with _$UserDataEvent {
  const factory UserDataEvent.userDataSubscription(
    UserModel? userModel,
  ) = _UserDataSubscription;
  const factory UserDataEvent.setUserName(String name) = _SetUserName;
  const factory UserDataEvent.setUserSurname(String surname) = _SetUserSurname;
}
