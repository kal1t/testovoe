// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_realm.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserModelRealm extends _UserModelRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  UserModelRealm(
    int id, {
    String? phone,
    String? name,
    String? surname,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'pnone', phone);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'surname', surname);
  }

  UserModelRealm._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get pnone => RealmObjectBase.get<String>(this, 'pnone') as String?;
  @override
  set pnone(String? value) => RealmObjectBase.set(this, 'pnone', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get surname =>
      RealmObjectBase.get<String>(this, 'surname') as String?;
  @override
  set surname(String? value) => RealmObjectBase.set(this, 'surname', value);

  @override
  Stream<RealmObjectChanges<UserModelRealm>> get changes =>
      RealmObjectBase.getChanges<UserModelRealm>(this);

  @override
  UserModelRealm freeze() => RealmObjectBase.freezeObject<UserModelRealm>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UserModelRealm._);
    return const SchemaObject(
        ObjectType.realmObject, UserModelRealm, 'UserModelRealm', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('pnone', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('surname', RealmPropertyType.string, optional: true),
    ]);
  }
}
