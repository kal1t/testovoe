import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:testovoe/features/login/data/datasourse/local/reaml_datasource.dart';
import 'package:testovoe/features/login/data/datasourse/remote/some_auth_datasource.dart';
import 'package:testovoe/features/login/data/models/user_model.dart';

abstract class ISomeAuthRepository {
  Future<int?> sendUserNumber({required String? phoneNumber});

  Future<int?> sendPasscode({required String? passCode});

  Stream<UserModel?> get userDataStream;

  void saveUserData(UserModel? userData);
}

@Singleton(as: ISomeAuthRepository)
class SomeAuthRepository implements ISomeAuthRepository {
  SomeAuthRepository(this._authDatasourse, this._realmDatasourse);

  final IAuthDatasourse _authDatasourse;
  final IRealmDatasource _realmDatasourse;

  @override
  Stream<UserModel?> get userDataStream => _realmDatasourse.userDataStream;

  @override
  Future<int?> sendUserNumber({required String? phoneNumber}) =>
      _authDatasourse.sendUserNumber(phoneNumber: phoneNumber);

  @override
  Future<int?> sendPasscode({required String? passCode}) async =>
      _authDatasourse.sendPasscode(passCode: passCode);

  @override
  void saveUserData(UserModel? userData) {
    _realmDatasourse.setUserData(userData);
  }
}
