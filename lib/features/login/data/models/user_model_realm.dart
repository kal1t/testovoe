import 'package:realm/realm.dart';

part 'user_model_realm.g.dart';

@RealmModel()
class _UserModelRealm {
  @PrimaryKey()
  late int id;
  late String? pnone;
  late String? name;
  late String? surname;
}
