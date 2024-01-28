import 'dart:async';

import 'package:injectable/injectable.dart';

abstract interface class IAuthDatasourse {
  Future<int?> sendUserNumber({required String? phoneNumber});

  Future<int?> sendPasscode({required String? passCode});
}

// TODO: переименвовать в datasourse
@Injectable(as: IAuthDatasourse)
class SomeAuthDatasourse implements IAuthDatasourse {
  SomeAuthDatasourse(/* this._dio */);

  // final Dio _dio;

  @override
  Future<int?> sendUserNumber({required String? phoneNumber}) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      // final response = await _dio.get(
      //   '/path_to_api',
      //   queryParameters: {'some_phone_param': cityTitle},
      // );

      // if (response.statusCode != 200) {
      //   тут будет throw DioError
      // }

      // можно сериализовывать в модельку
      return 200;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int?> sendPasscode({required String? passCode}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return 200;
  }
}
