import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testovoe/features/login/data/models/user_model_realm.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed

/// Моделька c данными пользователя пользователя
class UserModel with _$UserModel {
  /// Конструктор для генерации класса с помошью пакета freezed
  const factory UserModel({
    @Default(0) id,
    String? name,
    String? surname,
    String? phone,
  }) = _UserModel;

  /// Конструктор для генерации метода для работы с json
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  factory UserModel.fromRealm(UserModelRealm modelRealm) => UserModel(
        id: modelRealm.id,
        name: modelRealm.name,
        surname: modelRealm.surname,
        phone: modelRealm.pnone,
      );
}
