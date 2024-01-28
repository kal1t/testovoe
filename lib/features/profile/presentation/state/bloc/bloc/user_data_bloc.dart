import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testovoe/features/login/data/models/user_model.dart';
import 'package:testovoe/features/login/data/repositories/some_auth_repository.dart';

part 'user_data_bloc.freezed.dart';
part 'user_data_event.dart';
part 'user_data_state.dart';

class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  UserDataBloc(this._authRepository) : super(const UserDataState()) {
    on<_SetUserName>(_onSetUserName);
    on<_SetUserSurname>(_onSetUserSurname);
    on<_UserDataSubscription>(_onUserDataSubscription);

    _subscription = _authRepository.userDataStream.listen((event) {
      add(UserDataEvent.userDataSubscription(event));
    });
  }

  late final StreamSubscription<UserModel?> _subscription;
  final ISomeAuthRepository _authRepository;

  FutureOr<void> _onSetUserName(event, emit) async {
    final newUserData = state.userModel?.copyWith(name: event.name);

    _authRepository.saveUserData(newUserData);
    emit(state.copyWith(userModel: newUserData));
  }

  FutureOr<void> _onSetUserSurname(event, emit) async {
    final newUserData = state.userModel?.copyWith(surname: event.surname);

    _authRepository.saveUserData(newUserData);
    emit(state.copyWith(userModel: newUserData));
  }

  FutureOr<void> _onUserDataSubscription(event, emit) async {
    emit(state.copyWith(userModel: event.userModel));
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
