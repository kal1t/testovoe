import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testovoe/features/login/data/models/user_model.dart';
import 'package:testovoe/features/login/data/models/user_model_realm.dart';

abstract class IRealmDatasource {
  UserModel? getUserData();
  Future<void> setUserData(UserModel? userData);
  Stream<UserModel?> get userDataStream;
  void dispose();
}

@Singleton(as: IRealmDatasource)
class RealmDatasource extends IRealmDatasource {
  final _behaviorSubjectUserModel = BehaviorSubject<UserModel?>.seeded(null);
  late final StreamSubscription<RealmResultsChanges> _streamSubscription;
  late final Realm realm;

  RealmDatasource() {
    realm = Realm(Configuration.local([UserModelRealm.schema]));
    _streamSubscription = realm.all<UserModelRealm>().changes.listen((event) {
      if (event.results.isNotEmpty) {
        _behaviorSubjectUserModel.add(UserModel.fromRealm(event.results.first));
      }
    });
  }

  @override
  Stream<UserModel?> get userDataStream => _behaviorSubjectUserModel.stream;

  @override
  UserModel? getUserData() {
    final times = UserModel.fromRealm(realm.all<UserModelRealm>().first);
    _behaviorSubjectUserModel.add(times);
    return times;
  }

  @disposeMethod
  @override
  void dispose() {
    realm.close();
    _streamSubscription.cancel();
    _behaviorSubjectUserModel.close();
  }

  @override
  Future<void> setUserData(UserModel? userData) async {
    final userModelRealm = realm.find<UserModelRealm>(userData?.id);
    if (userModelRealm != null) {
      await realm.writeAsync(() {
        userModelRealm.id = userData?.id;
        userModelRealm.name = userData?.name;
        userModelRealm.surname = userData?.surname;
      });
      await realm.refreshAsync();
    } else {
      final reamlUserData = UserModelRealm(
        userData?.id,
        phone: userData?.phone,
        name: userData?.name,
        surname: userData?.surname,
      );
      realm.write(() {
        realm.add(reamlUserData);
      });
    }
  }
}
