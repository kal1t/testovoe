import 'dart:async';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

@InjectableInit(initializerName: r'$initGetIt', asExtension: false)
Future<void> configureDependencies() async => $initGetIt(GetIt.I);

@module
abstract class InjectionModule {
//injecting third party libraries
  FlutterSecureStorage get prefs => const FlutterSecureStorage();
}
